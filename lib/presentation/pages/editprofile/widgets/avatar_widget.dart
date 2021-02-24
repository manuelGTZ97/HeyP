import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../application/signup/signup_bloc.dart';
import '../../../components/image_chooser_dialog.dart';
import '../../../utils/app_utils.dart';
import '../../../utils/constants.dart';

class AvatarWidget extends StatefulWidget {
  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  File _image;
  final picker = ImagePicker();

  Future _getImage(ImageSource imageSource) async {
    var pickedFile = await picker.getImage(source: imageSource);

    var image = await ImageCropper.cropImage(
      sourcePath: pickedFile.path,
      aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
      androidUiSettings: AndroidUiSettings(
          toolbarTitle: '',
          toolbarColor: kColorPrimary,
          toolbarWidgetColor: Colors.white,
          //initAspectRatio: CropAspectRatioPreset.original,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: false),
      iosUiSettings: IOSUiSettings(
        minimumAspectRatio: 1.0,
      ),
    );

    context.bloc<SignUpBloc>().add(SignUpEvent.imageChanged(image.path));

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 153,
      height: 176,
      child: Stack(
        children: <Widget>[
          _image == null
              ? ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: AppUtils.getAvatar(),
                    width: 153,
                    height: 153,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) {
                      return Image.asset(
                        'assets/images/empty_avatar.png',
                        width: 153,
                        height: 153,
                      );
                    },
                  ),
                )
              : ClipOval(
                  child: Image.file(
                    _image,
                    width: 153,
                    height: 153,
                    fit: BoxFit.cover,
                  ),
                ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipOval(
              child: Material(
                child: InkWell(
                  onTap: () => showChooseDialog(
                    context: context,
                    onTapCamera: () => _getImage(ImageSource.camera),
                    onTapGallery: () => _getImage(ImageSource.gallery),
                  ),
                  child: Image.asset(
                    'assets/images/add_button.png',
                    width: 46,
                    height: 46,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
