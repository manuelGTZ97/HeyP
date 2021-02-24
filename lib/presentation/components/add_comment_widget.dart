import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/comment/comment_bloc.dart';
import '../utils/constants.dart';
import 'custom_send_button.dart';

class AddCommentWidget extends StatefulWidget {
  final Function onPressed;

  const AddCommentWidget({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  @override
  _AddCommentWidgetState createState() => _AddCommentWidgetState();
}

class _AddCommentWidgetState extends State<AddCommentWidget> {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x7dcecece),
            offset: Offset(0, 1),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Icon(
              Icons.mode_edit,
              color: kColorGrey.withOpacity(0.5),
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'write_your_comment_here'.tr(),
                hintStyle: TextStyle(
                  color: kColorGrey.withOpacity(0.5),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              minLines: 1,
              maxLines: 5,
              onChanged: (value) => context
                  .bloc<CommentBloc>()
                  .add(CommentEvent.commentChanged(value)),
              validator: (_) =>
                  context.bloc<CommentBloc>().state.comment.value.fold(
                        (f) => f.maybeMap(
                          empty: (_) => 'fill_the_field'.tr(),
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
            ),
          ),
          Container(
            width: 60,
            height: 60,
            child: CustomSendButton(
              onPressed: () {
                widget.onPressed();
                _controller.clear();
                FocusScope.of(context).requestFocus(FocusNode());
                context
                    .bloc<CommentBloc>()
                    .add(CommentEvent.commentChanged(''));
              },
            ),
          ),
        ],
      ),
    );
  }
}
