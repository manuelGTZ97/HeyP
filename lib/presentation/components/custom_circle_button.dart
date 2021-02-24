import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final Color color;
  final Function onPressed;
  final double iconSize;
  final double padding;

  const CustomCircleButton({
    Key key,
    @required this.iconData,
    @required this.iconColor,
    @required this.color,
    @required this.onPressed,
    @required this.iconSize,
    @required this.padding,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        iconData,
        color: iconColor,
        size: iconSize,
      ),
      shape: CircleBorder(),
      elevation: 0,
      fillColor: color,
      padding: EdgeInsets.all(padding),
    );
  }
}
