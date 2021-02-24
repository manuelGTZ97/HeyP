import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomButtonIcon extends StatelessWidget {
  final String title;
  final String icon;
  final double iconSize;
  final Color color;
  final Function onPressed;

  const CustomButtonIcon({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.iconSize,
    this.color,
    @required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: RawMaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        padding: EdgeInsets.all(0),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color ?? kColorPrimary,
                color ?? kColorPink,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Container(
            height: 52,
            padding: EdgeInsets.only(top: 14, bottom: 10, left: 19, right: 19),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Image.asset(
                  'assets/images/$icon.png',
                  width: iconSize,
                  height: iconSize,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
