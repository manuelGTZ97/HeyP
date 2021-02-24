import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:heyp/infrastructure/core/pref_manager.dart';

import '../utils/constants.dart';

class EmptyListWidget extends StatelessWidget {
  final String icon;
  final String message;

  const EmptyListWidget({
    Key key,
    @required this.icon,
    @required this.message,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/$icon.png',
          width: 153,
          height: 153,
        ),
        SizedBox(
          height: 22,
        ),
        Text(
          'sorry'.tr(),
          style: TextStyle(
            color: Prefs.isDark() ? Colors.white.withOpacity(0.87) : kColorGrey,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          message,
          style: TextStyle(
            color: Prefs.isDark() ? Colors.white.withOpacity(0.87) : kColorGrey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
