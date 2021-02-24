import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/news.dart';
import '../../../routes/routes.dart';
import '../../../utils/constants.dart';

class NewsListItemWidget extends StatelessWidget {
  final News news;
  final Function onTap;

  const NewsListItemWidget({
    Key key,
    @required this.news,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 13.5,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Color(0x0f000437),
              offset: Offset(0, 20),
              blurRadius: 17,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: CachedNetworkImage(
                imageUrl: Routes.baseUrl + news.image,
                width: 100,
                height: 75,
                fit: BoxFit.cover,
                placeholder: (context, url) {
                  return Container(
                    width: 100,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: kColorGrey.withOpacity(0.2),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    news.title,
                    style: TextStyle(
                      color: kColorGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    news.body,
                    style: TextStyle(
                      color: kColorGrey.withOpacity(0.5),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
