import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

import '../../infrastructure/api/api_service.dart';
import '../../infrastructure/core/pref_manager.dart';
import '../../infrastructure/services/push_notification_service.dart';
import '../../injection.dart';
import '../routes/routes.dart';

class AppUtils {
  static String getAvatar() {
    String avatar = Prefs.getString(Prefs.AVATAR, def: '');
    return avatar.isNotEmpty
        ? Routes.baseUrl +
            'public/images/users/' +
            Prefs.getInt(Prefs.ID).toString() +
            '/128x128_' +
            avatar
        : '';
  }

  static String getUserAvatar(int id, String avatar) {
    return avatar.isNotEmpty
        ? Routes.baseUrl +
            'public/images/users/' +
            id.toString() +
            '/128x128_' +
            avatar
        : '';
  }

  static String getPostImage(int id, String image) {
    return '${Routes.baseUrl}public/images/posts/$id/$image';
  }

  static bool isRTL(BuildContext context) {
    return intl.Bidi.isRtlLanguage(
        Localizations.localeOf(context).languageCode);
  }

  static String getFullName() {
    return Prefs.getString(Prefs.FIRST_NAME, def: '') +
        ' ' +
        Prefs.getString(Prefs.LAST_NAME, def: '');
  }

  static int getUserID() {
    return Prefs.getInt(Prefs.ID, def: -1);
  }

  // TODO add locale
  static String dateToFormattedDate(String date, bool showYear) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate;
    showYear
        ? formattedDate = DateFormat.yMMMd().format(dateTime)
        : formattedDate = DateFormat.MMMd().format(dateTime);
    return formattedDate;
  }

  static String dateToDayOfMonth(String date) {
    DateTime dateTime = DateTime.parse(date);
    return DateFormat.d().format(dateTime);
  }

  static String dateToMonth(String date) {
    DateTime dateTime = DateTime.parse(date);
    return DateFormat.MMM().format(dateTime);
  }

  static String dateToHourMinute(String date) {
    DateTime dateTime = DateTime.parse(date);
    return DateFormat.Hm().format(dateTime);
  }

  static String timeAgo(String date, {bool numericDates = false}) {
    DateTime dateTime = DateTime.parse(date);
    Duration diff = DateTime.now().difference(dateTime);
    if (diff.inMinutes < 60)
      return numericDates
          ? '${diff.inMinutes}${'m'.tr()}'
          : DateFormat.Hm().format(dateTime);
    if (diff.inHours < 24)
      return numericDates
          ? '${diff.inHours}${'h'.tr()}'
          : DateFormat.Hm().format(dateTime);
    if (diff.inDays < 2)
      return numericDates ? 'one_day'.tr() : 'yesterday'.tr();
    if (diff.inDays < 3)
      return numericDates ? 'two_days'.tr() : 'two_days_ago'.tr();
    if (diff.inDays < 4)
      return numericDates ? 'three_days'.tr() : 'three_days_ago'.tr();
    if (diff.inDays < 365) return DateFormat('d MMM').format(dateTime);
    return DateFormat.yMMMd().format(dateTime);
  }

  static void updateGcmToken() async {
    String token = await getIt<PushNotificationService>().initialise();
    if (token != Prefs.getString(Prefs.GCM_TOKEN, def: '') &&
        Prefs.getBool(Prefs.LOGIN_STATUS, def: false)) {
      final result = await getIt<HeyPApiService>().updateGcmToken(token);
      if (result.body.success) Prefs.setString(Prefs.GCM_TOKEN, token);
    }
  }
}
