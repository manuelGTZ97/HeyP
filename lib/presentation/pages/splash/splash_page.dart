import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../infrastructure/core/pref_manager.dart';
import '../../routes/routes.dart';
import '../../utils/app_themes.dart';
import '../../utils/app_utils.dart';
import '../../utils/themebloc/theme_bloc.dart';
import 'widgets/splash_1_widget.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => {_loadScreen()});
  }

  _loadScreen() async {
    AppUtils.updateGcmToken();

    context.bloc<ThemeBloc>().add(ThemeChanged(
        theme: Prefs.getBool(Prefs.DARKTHEME, def: false)
            ? AppTheme.DarkTheme
            : AppTheme.LightTheme));
    Navigator.of(context).pushReplacementNamed(
        Prefs.getBool(Prefs.LOGIN_STATUS, def: false)
            ? Routes.home
            : Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Splash1Widget(),
    );
  }
}
