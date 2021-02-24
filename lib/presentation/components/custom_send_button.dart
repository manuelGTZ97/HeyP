import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomSendButton extends StatelessWidget {
  final Function onPressed;

  const CustomSendButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: RawMaterialButton(
        onPressed: onPressed,
        padding: EdgeInsets.all(0),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kColorPrimary,
                kColorPink,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 14, bottom: 10),
            alignment: Alignment.center,
            child: Image.asset('assets/images/icon_send.png'),
          ),
        ),
      ),
    );
  }
}
