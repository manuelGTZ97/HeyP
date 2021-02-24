import 'dart:async';

import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class InputWidget extends StatefulWidget {
  final Function onSendMessage;
  final Function onStartTyping;
  final Function onStopTyping;

  const InputWidget({
    Key key,
    @required this.onSendMessage,
    @required this.onStartTyping,
    @required this.onStopTyping,
  }) : super(key: key);

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  var _controller = TextEditingController();
  Timer _typingTimer;
  bool _isTyping = false;
  bool _showEmoji = false;

  void _sendMessage() {
    if (_controller.text.isEmpty) return;

    widget.onSendMessage(_controller.text);
    setState(() {
      _controller.text = '';
    });
  }

  void _runTimer() {
    if (_typingTimer != null && _typingTimer.isActive) _typingTimer.cancel();
    _typingTimer = Timer(Duration(milliseconds: 800), () {
      if (!_isTyping) return;
      _isTyping = false;
      widget.onStopTyping();
    });
    _isTyping = true;
    widget.onStartTyping();
  }

  void _toggleEmoji({bool value}) {
    _showEmoji = value ?? !_showEmoji;
    if (_showEmoji) FocusScope.of(context).unfocus();
    setState(() {});
    //context.bloc<MessagesBloc>().add(MessagesEvent.showEmoji(_showEmoji));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: kColorGrey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _controller,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                          isDense: true,
                          hintText: 'Aa',
                        ),
                        onTap: () => _toggleEmoji(value: false),
                        onChanged: (_) => _runTimer(),
                        onFieldSubmitted: (_) => _sendMessage(),
                      ),
                    ),
                    GestureDetector(
                      onTap: _toggleEmoji,
                      child: Icon(
                        Icons.tag_faces,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: _sendMessage,
            ),
          ],
        ),
        if (_showEmoji)
          EmojiPicker(
            rows: 4,
            onEmojiSelected: (emoji, category) {
              _controller.text += emoji.emoji;
              _controller.selection = TextSelection.fromPosition(
                  TextPosition(offset: _controller.text.length));
            },
          ),
      ],
    );
  }
}
