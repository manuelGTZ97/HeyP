import 'package:flutter/material.dart';

showChooseDialog({
  @required BuildContext context,
  @required Function onTapCamera,
  @required Function onTapGallery,
}) {
  showDialog(
    barrierDismissible: true,
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        // child: WaitCircularProgress(title: 'Please wait'),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 47, horizontal: 34),
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _circleButton(
                  image: 'icon_camera',
                  onTap: () {
                    Navigator.pop(context);
                    onTapCamera();
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                _circleButton(
                  image: 'icon_gallery',
                  onTap: () {
                    Navigator.pop(context);
                    onTapGallery();
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget _circleButton({String image, Function onTap}) {
  return ClipOval(
    child: Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 102,
          height: 102,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffe25e31), width: 1),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/$image.png',
              width: 42,
              height: 32,
            ),
          ),
        ),
      ),
    ),
  );
}
