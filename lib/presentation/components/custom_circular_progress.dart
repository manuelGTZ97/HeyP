import 'package:flutter/material.dart';

class CustomCircularProgress extends StatelessWidget {
  final double size;
  final Color color;

  const CustomCircularProgress(
      {Key key, @required this.size, @required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
