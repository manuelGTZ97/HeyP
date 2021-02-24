import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class AddPostButtonWidget extends StatelessWidget {
  final Function onPressed;

  const AddPostButtonWidget({
    Key key,
    @required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: RawMaterialButton(
        onPressed: onPressed,
        shape: CircleBorder(),
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
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.add,
              size: 32,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
