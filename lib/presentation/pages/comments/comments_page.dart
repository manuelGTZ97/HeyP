import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/comment/comment_bloc.dart';
import '../../../domain/entities/comment.dart';
import '../../../domain/entities/user.dart';
import '../../../infrastructure/core/pref_manager.dart';
import '../../../injection.dart';
import '../../components/add_comment_widget.dart';
import '../../components/comment_list_item.dart';
import '../../components/comment_list_shimmer.dart';
import '../../components/empty_list_widget.dart';
import '../../components/no_internet.dart';
import '../../components/server_error.dart';

class CommentsPage extends StatefulWidget {
  final int id;

  const CommentsPage({Key key, @required this.id}) : super(key: key);
  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  CommentBloc _commentBloc;
  List<Comment> _comments = [];
  Comment _comment;
  bool _commented;

  var _tapPosition;

  Future<bool> _refresh() {
    _commentBloc.add(CommentEvent.getComments(widget.id));
    return Future.value(true);
  }

  void _showCustomMenu(int id) {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject();

    showMenu(
            context: context,
            items: <PopupMenuEntry<bool>>[_DeleteCommentEntry()],
            position: RelativeRect.fromRect(
                _tapPosition &
                    const Size(40, 40), // smaller rect, the touch area
                Offset.zero & overlay.size // Bigger rect, the entire screen
                ))
        // This is how you handle user selection
        .then((bool delete) {
      // delta would be null if user taps on outside the popup menu
      // (causing it to close without making selection)
      if (delete == null) return;

      if (delete) {
        _commentBloc.add(CommentEvent.deleteComment(id));
      }
    });
  }

  void _storePosition(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, _commented);
        return Future.value(_commented);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('comments'.tr()),
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context, _commented),
          ),
        ),
        body: RefreshIndicator(
          key: _refreshIndicatorKey,
          onRefresh: _refresh,
          child: BlocProvider(
            create: (context) => _commentBloc = getIt<CommentBloc>()
              ..add(
                CommentEvent.getComments(widget.id),
              ),
            child: BlocConsumer<CommentBloc, CommentState>(
              //listenWhen: (p, c) => p.isSubmitting != c.isSubmitting,
              listener: (context, state) {
                state.getCommentsFailureOrSuccessOption.fold(
                  () => null,
                  (either) => either.fold(
                    (failure) => serverError(),
                    (success) => _comments = success.comments,
                  ),
                );

                state.addCommentFailureOrSuccessOption.fold(
                  () => null,
                  (either) => either.fold(
                    (failure) {
                      _comments.removeLast();
                      return serverError();
                    },
                    (success) => _commented = true,
                  ),
                );

                state.deleteCommentFailureOrSuccessOption.fold(
                  () => null,
                  (either) => either.fold(
                    (failure) => null,
                    (success) {
                      _comments.remove(_comment);
                      _comment = null;
                    },
                  ),
                );
              },
              buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
              builder: (context, state) {
                return state.getCommentsFailureOrSuccessOption.fold(
                  () => Column(
                    children: <Widget>[
                      Expanded(
                        child: CommentListShimmer(),
                      ),
                      AddCommentWidget(
                        onPressed: () {},
                      ),
                    ],
                  ),
                  (either) => either.fold(
                    (failure) => NoInternet(
                      msg: failure.map(
                        serverError: (_) => null,
                        apiFailure: (e) => e.msg,
                      ),
                      onPressed: _refresh,
                    ),
                    (success) => Column(
                      children: [
                        Expanded(
                          child: success.comments.isNotEmpty
                              ? _bodyWidget(context, _comments)
                              : Center(
                                  child: EmptyListWidget(
                                    icon: 'icon_no_messages',
                                    message: 'no_comments'.tr(),
                                  ),
                                ),
                        ),
                        _addComment(context),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  ListView _bodyWidget(BuildContext context, List<Comment> comments) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        indent: 0,
        endIndent: 0,
      ),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        return CommentListItem(
          comment: comments[index],
          onLongPress: () {
            if (comments[index].user.id != Prefs.getID()) return;
            _comment = comments[index];
            _showCustomMenu(comments[index].id);
          },
          onTapDown: _storePosition,
        );
      },
    );
  }

  Widget _addComment(BuildContext context) {
    return AddCommentWidget(
      onPressed: () {
        _commentBloc.add(CommentEvent.addComment(widget.id));
        _commentBloc.state.comment.value.fold(
          (f) => f.maybeMap(
            empty: (_) => 'fill_the_field'.tr(),
            orElse: () => null,
          ),
          (value) {
            final User user = User(
              id: Prefs.getInt(Prefs.ID, def: -1),
              username: Prefs.getUsername(),
              avatar: Prefs.getString(Prefs.AVATAR, def: ''),
            );

            final DateTime now = DateTime.now();
            final DateFormat formatter =
                DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
            final String formatted = formatter.format(now);

            final Comment comment = Comment(
              comment: value,
              user: user,
              date: formatted,
            );
            setState(() {
              _comments.add(comment);
            });
          },
        );
      },
    );
  }
}

// ignore: must_be_immutable
class _DeleteCommentEntry extends PopupMenuEntry<bool> {
  @override
  double height = 100;

  @override
  bool represents(bool n) => n == 1 || n == -1;

  @override
  _DeleteCommentEntryState createState() => _DeleteCommentEntryState();
}

class _DeleteCommentEntryState extends State<_DeleteCommentEntry> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context, true),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('delete'.tr()),
      ),
    );
  }
}
