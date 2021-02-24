import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:heyp/infrastructure/core/pref_manager.dart';

import '../utils/constants.dart';

class NoPostsWidget extends StatelessWidget {
  final String message;
  final Function onPressed;

  const NoPostsWidget({
    Key key,
    this.message,
    @required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Prefs.isDark() ? Colors.black : Colors.white,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/no_result.png',
              width: 153,
              height: 153,
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              'sorry'.tr(),
              style: TextStyle(
                color: Prefs.isDark()
                    ? Colors.white.withOpacity(0.87)
                    : kColorGrey,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              message ?? 'no_posts_body'.tr(),
              style: TextStyle(
                color: Prefs.isDark()
                    ? Colors.white.withOpacity(0.87)
                    : kColorGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.refresh,
                size: 32,
                color: kColorPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
