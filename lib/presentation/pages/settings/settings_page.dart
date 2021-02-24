import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../infrastructure/core/pref_manager.dart';
import '../../components/confirm_dialog.dart';
import '../../components/section_widget.dart';
import '../../routes/routes.dart';
import '../../utils/app_themes.dart';
import '../../utils/constants.dart';
import '../../utils/themebloc/theme_bloc.dart';
import 'widgets/settings_item.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var _isDark = Prefs.getBool(Prefs.DARKTHEME, def: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDark ? Colors.black : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionWidget(
              title: 'account'.tr(),
            ),
            SettingsItem(
              title: 'edit_profile'.tr(),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.editProfile);
              },
            ),
            Divider(
              color: Color(0xffbac0cb).withOpacity(0.21),
              height: 0.5,
              thickness: 0.5,
            ),
            SettingsItem(
              title: 'change_password'.tr(),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.changePassword);
              },
            ),
            Divider(
              color: Color(0xffbac0cb).withOpacity(0.21),
              height: 0.5,
              thickness: 0.5,
            ),
            SettingsItem(
              title: 'change_language'.tr(),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.language);
              },
            ),
            SectionWidget(
              title: 'others'.tr(),
            ),
            SettingsItem(
              title: 'privacy_policy'.tr(),
              onTap: () {},
            ),
            Divider(
              color: Color(0xffbac0cb).withOpacity(0.21),
              height: 0.5,
              thickness: 0.5,
            ),
            SettingsItem(
              title: 'terms_and_conditions'.tr(),
              onTap: () {},
            ),
            Divider(
              color: Color(0xffbac0cb).withOpacity(0.21),
              height: 0.5,
              thickness: 0.5,
            ),
            SwitchListTile(
              value: _isDark,
              onChanged: (_) {
                setState(() {
                  _isDark = !_isDark;
                  Prefs.setBool(Prefs.DARKTHEME, _isDark);
                  context.bloc<ThemeBloc>().add(ThemeChanged(
                      theme:
                          _isDark ? AppTheme.DarkTheme : AppTheme.LightTheme));
                });
              },
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'dark_theme'.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 17),
                ),
              ),
            ),
            Divider(
              color: Color(0xffbac0cb).withOpacity(0.21),
              height: 0.5,
              thickness: 0.5,
            ),
            InkWell(
              onTap: () {
                showConfirmDialog(
                  context: context,
                  message: 'are_you_sure_you_want_to_logout'.tr(),
                  action1: 'no'.tr(),
                  action2: 'yes'.tr(),
                  onPressed: () async {
                    String language = Prefs.getString(Prefs.LANGUAGE, def: '');
                    await Prefs.clear();
                    Prefs.setString(Prefs.LANGUAGE, language);

                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, Routes.login);
                  },
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 17,
                  horizontal: 21,
                ),
                child: Text(
                  'logout'.tr(),
                  style: TextStyle(
                    color: kColorPrimary,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            Divider(
              color: Color(0xffbac0cb).withOpacity(0.21),
              height: 0.5,
              thickness: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
