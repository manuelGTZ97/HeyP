import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/comment.dart';
import '../../infrastructure/core/pref_manager.dart';
import '../routes/routes.dart';
import '../utils/app_utils.dart';
import '../utils/constants.dart';

class CommentListItem extends StatelessWidget {
  final Comment comment;
  final Function onLongPress;
  final Function onTapDown;

  const CommentListItem({
    Key key,
    @required this.comment,
    @required this.onLongPress,
    @required this.onTapDown,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isDark = Prefs.getBool(Prefs.DARKTHEME, def: false);
    return InkWell(
      onLongPress: onLongPress,
      onTapDown: onTapDown,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
        child: Row(
          children: <Widget>[
            ClipOval(
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  Routes.profile,
                  arguments: comment.user,
                ),
                child: CachedNetworkImage(
                  imageUrl: AppUtils.getUserAvatar(
                      comment.user.id, comment.user.avatar),
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) {
                    return Image.asset(
                      'assets/images/empty_avatar.png',
                      width: 48,
                      height: 48,
                    );
                  },
                ),
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
                    comment.user.username,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    //AppUtils.dateToFormattedDate(feed.date, true),
                    comment.comment,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              AppUtils.timeAgo(comment.date, numericDates: true),
              style: TextStyle(
                color: isDark
                    ? Colors.white.withOpacity(0.5)
                    : kColorGrey.withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
