import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:heyp/presentation/routes/routes.dart';

import '../../../../domain/entities/user.dart';
import '../../../../infrastructure/core/pref_manager.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_circle_avatar.dart';
import '../../../utils/app_utils.dart';
import 'followe_widget.dart';
import 'stats_widget.dart';

class HeaderWidget extends StatefulWidget {
  final User user;

  const HeaderWidget({
    Key key,
    @required this.user,
  }) : super(key: key);
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Prefs.isDark() ? Colors.black : Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomCircleAvatar(
                  radius: 40,
                  url: AppUtils.getUserAvatar(
                      widget.user.id, widget.user.avatar),
                ),
                Expanded(
                  child: StatsWidget(
                    followers: widget.user.followers,
                    following: widget.user.following,
                    posts: widget.user.posts,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '${widget.user.firstName} ${widget.user.lastName}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'Soon! user bio',
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
            ),
            if (widget.user.id != Prefs.getID())
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: CustomButton(
                          title: 'message'.tr(),
                          onPressed: () => Navigator.pushNamed(
                            context,
                            Routes.messagesDetails,
                            arguments: widget.user,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: FollowWidget(
                          id: widget.user.id,
                          follow: widget.user.follow,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
