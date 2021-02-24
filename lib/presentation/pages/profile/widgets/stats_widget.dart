import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class StatsWidget extends StatelessWidget {
  final int followers;
  final int following;
  final int posts;

  const StatsWidget({
    Key key,
    @required this.followers,
    @required this.following,
    @required this.posts,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _infoWidget(context, 'posts'.tr(), posts),
          _infoWidget(context, 'followers'.tr(), followers),
          _infoWidget(context, 'following'.tr(), following),
        ],
      ),
    );
  }

  Column _infoWidget(BuildContext context, String title, int count) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
