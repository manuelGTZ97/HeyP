import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/feed.dart';
import '../../infrastructure/core/pref_manager.dart';
import '../routes/routes.dart';
import '../utils/app_utils.dart';
import '../utils/constants.dart';
import 'custom_circle_avatar.dart';
import 'post_footer_buttons.dart';

class PostListItem extends StatelessWidget {
  final Feed feed;

  const PostListItem({
    Key key,
    @required this.feed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Prefs.isDark() ? Color(0xff121212) : Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19),
            child: _header(context),
          ),
          if (feed.image.isNotEmpty)
            Container(
              color: kColorGrey,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  Routes.preview,
                  arguments: AppUtils.getPostImage(feed.id, feed.image),
                ),
                child: CachedNetworkImage(
                  imageUrl: AppUtils.getPostImage(feed.id, feed.image),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          feed.body.isNotEmpty
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 19),
                  child: Text(
                    feed.body,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              : SizedBox(
                  height: 20,
                ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19),
            child: PostFooterButton(
              feed: feed,
            ),
          ),
          //Divider(),
        ],
      ),
    );
  }

  Padding _header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 15),
      child: Row(
        children: <Widget>[
          CustomCircleAvatar(
            onTap: () => Navigator.pushNamed(
              context,
              Routes.profile,
              arguments: feed.user,
            ),
            radius: 20,
            url: AppUtils.getUserAvatar(feed.user.id, feed.user.avatar),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  feed.user.username,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '${AppUtils.timeAgo(feed.date, numericDates: true)}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
