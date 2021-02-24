import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';

import 'navigation_service.dart';
import 'injection.dart';
import 'presentation/routes/route_generator.dart';
import 'presentation/routes/routes.dart';
import 'presentation/utils/themebloc/theme_bloc.dart';
import 'socket_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        Locale('en'),
        Locale('de'),
        Locale('ar'),
        Locale('es'),
        Locale('pt'),
        Locale('it'),
        Locale('fr'),
      ],
      useOnlyLangCode: true,
      path: 'assets/languages',
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      builder: (ctx, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: SocketProvider(
            child: child,
          ),
        );
      },
      title: 'app_name'.tr(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        EasyLocalization.of(context).delegate,
      ],
      supportedLocales: EasyLocalization.of(context).supportedLocales,
      locale: EasyLocalization.of(context).locale,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      navigatorKey: getIt<NavigationService>().navigatorKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: state.themeData,
    );
  }
}

class NavKeys {
  static final navigator = GlobalKey<NavigatorState>();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
