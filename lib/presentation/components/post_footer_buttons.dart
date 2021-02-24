import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:social_share/social_share.dart';

import '../../application/post/post_bloc.dart';
import '../../domain/entities/feed.dart';
import '../../infrastructure/core/pref_manager.dart';
import '../../injection.dart';
import '../routes/routes.dart';
import '../utils/app_utils.dart';
import '../utils/constants.dart';

class PostFooterButton extends StatefulWidget {
  final Feed feed;

  const PostFooterButton({
    Key key,
    @required this.feed,
  }) : super(key: key);
  @override
  _PostFooterButtonState createState() => _PostFooterButtonState();
}

class _PostFooterButtonState extends State<PostFooterButton> {
  bool _liked;
  int _likes;
  int _comments;

  @override
  void initState() {
    super.initState();
    _liked = widget.feed.liked == 1;
    _likes = widget.feed.likes;
    _comments = widget.feed.comments;
  }

  Future<String> _findPath(String imageUrl) async {
    final cache = await DefaultCacheManager();
    final file = await cache.getFileFromCache(imageUrl);
    return file.file.path;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostBloc>(),
      child: BlocConsumer<PostBloc, PostState>(
        listener: (context, state) {
          state.likePostFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (failure) {
                setState(() {
                  _liked = !_liked;
                  _liked ? _likes++ : _likes--;
                });
              },
              (success) => null,
            ),
          );
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  _button(
                    title: _likes.toString(),
                    image: _liked ? 'icon_like_filled' : 'icon_like',
                    onPressed: () {
                      context
                          .bloc<PostBloc>()
                          .add(PostEvent.likePost(widget.feed.id));
                      setState(() {
                        _liked = !_liked;
                        _liked ? _likes++ : _likes--;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  _button(
                    title: _comments.toString(),
                    image: 'icon_comment',
                    onPressed: () async {
                      final result = await Navigator.of(context).pushNamed(
                          Routes.comments,
                          arguments: widget.feed.id);
                      if (result != null && result)
                        setState(() {
                          _comments++;
                        });
                    },
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                  _button(
                    title: 'share'.tr(),
                    icon: Icon(
                      Icons.share,
                      size: 20,
                      color: kColorGrey,
                    ),
                    onPressed: () {
                      widget.feed.image.isNotEmpty
                          ? _findPath(AppUtils.getPostImage(
                                  widget.feed.id, widget.feed.image))
                              .then(
                              (value) => SocialShare.shareOptions(
                                  widget.feed.body.isNotEmpty
                                      ? widget.feed.body
                                      : 'app_name'.tr(),
                                  imagePath: value),
                            )
                          : SocialShare.shareOptions(
                              widget.feed.body.isNotEmpty
                                  ? widget.feed.body
                                  : 'app_name'.tr(),
                            );
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Material _button({
    String title,
    String image,
    Function onPressed,
    Widget icon,
  }) {
    return Material(
      color: Prefs.isDark() ? Color(0xff121212) : Colors.white,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
              icon ??
                  Image.asset(
                    'assets/images/$image.png',
                    width: 19,
                    height: 19,
                  ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
