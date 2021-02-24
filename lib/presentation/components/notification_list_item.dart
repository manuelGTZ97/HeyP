import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/notification.dart' as notif;
import '../../infrastructure/core/pref_manager.dart';
import '../utils/app_utils.dart';
import '../utils/constants.dart';

class NotificationListItem extends StatelessWidget {
  final notif.Notification notification;
  final Function onTap;

  String _notificationdBody() {
    switch (notification.type) {
      case 0:
        return 'liked_your_post'.tr();

      case 1:
        return 'commented_on_your_post'.tr();

      case 2:
        return 'started_following_you'.tr();

      default:
        return '';
    }
  }

  const NotificationListItem({
    Key key,
    @required this.notification,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isDark = Prefs.getBool(Prefs.DARKTHEME, def: false);

    return Material(
      color: Prefs.isDark() ? kColorPrimaryDark : Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
          child: Row(
            children: <Widget>[
              ClipOval(
                child: CachedNetworkImage(
                  imageUrl: AppUtils.getUserAvatar(
                      notification.sender.id, notification.sender.avatar),
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
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      notification.sender.username,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      _notificationdBody(),
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
                '${AppUtils.dateToFormattedDate(notification.date, true)} \n${'at'.tr().toLowerCase()} ${AppUtils.dateToHourMinute(notification.date)}',
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
      ),
    );
  }
}
