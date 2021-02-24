import 'package:flutter/material.dart';

import 'constants.dart';

enum AppTheme {
  LightTheme,
  DarkTheme,
}

final appThemeData = {
  AppTheme.LightTheme: ThemeData(
    primaryColor: Colors.grey[300],
    brightness: Brightness.light,
    platform: TargetPlatform.iOS,
    scaffoldBackgroundColor: Colors.white,
    toggleableActiveColor: kColorPrimaryDark,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.white,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: kColorPrimaryDark,
      ),
      actionsIconTheme: IconThemeData(
        color: kColorPrimaryDark,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: kColorPrimaryDark,
          fontFamily: 'HelveticaNeue',
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    textTheme: TextTheme(
      button: kTextStyleButton,
      subtitle1: kTextStyleSubtitle1.copyWith(color: kColorPrimaryDark),
      subtitle2: kTextStyleSubtitle2.copyWith(color: kColorPrimaryDark),
      bodyText2: kTextStyleBody2.copyWith(color: kColorPrimaryDark),
      headline6: kTextStyleHeadline6.copyWith(color: kColorPrimaryDark),
    ),
    iconTheme: IconThemeData(
      color: kColorPrimary,
    ),
    fontFamily: 'HelveticaNeue',
    cardTheme: CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(width: 1, color: Colors.grey[200]),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: kColorPink),
      ),
    ),
  ),
  AppTheme.DarkTheme: ThemeData(
    brightness: Brightness.dark,
    platform: TargetPlatform.iOS,
    scaffoldBackgroundColor: Colors.black,
    toggleableActiveColor: kColorPink,
    appBarTheme: AppBarTheme(
      color: Color(0xff121212),
      elevation: 0,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(
        color: Colors.white.withOpacity(0.87),
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.white.withOpacity(0.87),
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontFamily: 'HelveticaNeue',
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.white54,
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    textTheme: TextTheme(
      button: kTextStyleButton.copyWith(color: Colors.white.withOpacity(0.87)),
      subtitle1:
          kTextStyleSubtitle1.copyWith(color: Colors.white.withOpacity(0.87)),
      subtitle2:
          kTextStyleSubtitle2.copyWith(color: Colors.white.withOpacity(0.87)),
      bodyText2:
          kTextStyleBody2.copyWith(color: Colors.white.withOpacity(0.87)),
      headline6:
          kTextStyleHeadline6.copyWith(color: Colors.white.withOpacity(0.87)),
    ),
    iconTheme: IconThemeData(
      color: Colors.white.withOpacity(0.87),
    ),
    fontFamily: 'HelveticaNeue',
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(width: 0, color: Colors.transparent),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.87)),
      ),
    ),
  ),
};
