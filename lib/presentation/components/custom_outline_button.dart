import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color borderColor;
  final Function onPressed;
  final double size;
  final double borderRadius;

  const CustomOutlineButton({
    Key key,
    @required this.title,
    @required this.titleColor,
    @required this.borderColor,
    @required this.onPressed,
    this.size,
    this.borderRadius,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: onPressed,
      borderSide: BorderSide(
        color: borderColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 4),
      ),
      highlightedBorderColor: borderColor,
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: size ?? 14,
        ),
      ),
    );
  }
}
