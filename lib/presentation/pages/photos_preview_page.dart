import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotosPreviewPage extends StatefulWidget {
  final String url;

  const PhotosPreviewPage({
    Key key,
    this.url,
  }) : super(key: key);
  @override
  _PhotosPreviewPageState createState() => _PhotosPreviewPageState();
}

class _PhotosPreviewPageState extends State<PhotosPreviewPage> {
  PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        // backgroundColor: Colors.black,
        title: Text(
          'preview'.tr(),
        ),
      ),
      body: PhotoViewGallery.builder(
        scrollPhysics: const BouncingScrollPhysics(),
        builder: (BuildContext context, int index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: CachedNetworkImageProvider(widget.url),
            initialScale: PhotoViewComputedScale.contained,
            maxScale: 1.0,
            //heroAttributes: HeroAttributes(tag: galleryItems[index].id),
          );
        },
        itemCount: 1,
        loadingBuilder: (context, event) => Center(
          child: Container(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              value: event == null
                  ? 0
                  : event.cumulativeBytesLoaded / event.expectedTotalBytes,
            ),
          ),
        ),
        //backgroundDecoration: widget.backgroundDecoration,
        pageController: _controller,
        //onPageChanged: onPageChanged,
      ),
    );
  }
}
