import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color titleColor;
  final Function onPressed;
  final EdgeInsets padding;

  const CustomButton({
    Key key,
    @required this.title,
    this.color,
    this.titleColor,
    @required this.onPressed,
    this.padding,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
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
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: titleColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
