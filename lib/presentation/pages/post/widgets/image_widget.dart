import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../application/post/post_bloc.dart';
import '../../../components/image_chooser_dialog.dart';
import '../../../utils/constants.dart';

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  File _image;
  final picker = ImagePicker();

  Future _getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);

    _image = await ImageCropper.cropImage(
      sourcePath: pickedFile.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      //aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
      androidUiSettings: AndroidUiSettings(
          toolbarTitle: '',
          toolbarColor: kColorPrimary,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false),
      // iosUiSettings: IOSUiSettings(
      //   minimumAspectRatio: 1.0,
      // ),
    );

    context.bloc<PostBloc>().add(PostEvent.imageChanged(pickedFile.path));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        color: Color(0xfff75356).withOpacity(0.1),
        child: _image != null ? _imageWidget() : _uploadImageWidget(),
      ),
    );
  }

  GestureDetector _uploadImageWidget() {
    return GestureDetector(
      onTap: () => showChooseDialog(
        context: context,
        onTapCamera: () => _getImage(ImageSource.camera),
        onTapGallery: () => _getImage(ImageSource.gallery),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 23,
          ),
          Text(
            'Upload photo',
            style: TextStyle(
              color: Color(0xffe25e31),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () => showChooseDialog(
              context: context,
              onTapCamera: () => _getImage(ImageSource.camera),
              onTapGallery: () => _getImage(ImageSource.gallery),
            ),
            child: Image.asset(
              'assets/images/icon_add_post.png',
              width: 70,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }

  Stack _imageWidget() {
    return Stack(
      children: <Widget>[
        Image.file(
          _image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 5,
          right: 5,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _image = null;
              });
            },
            child: Image.asset(
              'assets/images/icon_delete.png',
              width: 30,
              height: 30,
            ),
          ),
        ),
      ],
    );
  }
}
