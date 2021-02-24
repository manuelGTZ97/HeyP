import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double radius;
  final String url;
  final String errorImagePath;
  final Function onTap;

  const CustomCircleAvatar({
    Key key,
    @required this.radius,
    @required this.url,
    this.errorImagePath,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: url,
          width: radius * 2,
          height: radius * 2,
          fit: BoxFit.cover,
          errorWidget: (context, url, error) {
            return Image.asset(
              errorImagePath ?? 'assets/images/empty_avatar.png',
              width: radius * 2,
              height: radius * 2,
            );
          },
        ),
      ),
    );
  }
}
