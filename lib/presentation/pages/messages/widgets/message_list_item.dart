import 'package:flutter/material.dart';

import '../../../../domain/entities/message.dart';
import '../../../components/custom_circle_avatar.dart';
import '../../../utils/app_utils.dart';
import '../../../utils/constants.dart';

class MessageListItem extends StatelessWidget {
  final Message message;
  final Function onTap;

  const MessageListItem({
    Key key,
    @required this.message,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CustomCircleAvatar(
              radius: 20,
              url: message.sender.id != AppUtils.getUserID()
                  ? message.sender.avatar.isNotEmpty
                      ? AppUtils.getUserAvatar(
                          message.sender.id, message.sender.avatar)
                      : ''
                  : message.receiver.avatar.isNotEmpty
                      ? AppUtils.getUserAvatar(
                          message.receiver.id, message.receiver.avatar)
                      : '',
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.sender.id != AppUtils.getUserID()
                        ? message.sender.username
                        : message.receiver.username,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontWeight: FontWeight.w500),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    message.message,
                    style: TextStyle(
                      color: kColorGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              AppUtils.timeAgo(message.date),
              style: TextStyle(
                color: kColorGrey,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
