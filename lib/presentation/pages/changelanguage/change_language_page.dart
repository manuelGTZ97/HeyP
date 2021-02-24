import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/core/pref_manager.dart';
import 'widgets/language_list_item.dart';

enum Language {
  english,
  german,
  arabic,
  spanish,
  portugese,
  italian,
  french,
}

class ChangeLanguagePage extends StatefulWidget {
  @override
  _ChangeLanguagePageState createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  final _countryNames = [
    'English',
    'German',
    'Arabic',
    'Spanish',
    'Portugese',
    'Italian',
    'French',
  ];
  final _countryCodes = [
    'en',
    'de',
    'ar',
    'es',
    'pt',
    'it',
    'fr',
  ];
  final _languages = [
    Language.english,
    Language.german,
    Language.arabic,
    Language.spanish,
    Language.portugese,
    Language.italian,
    Language.french,
  ];
  Language _language;
  @override
  void initState() {
    super.initState();
    switch (Prefs.getString(Prefs.LANGUAGE, def: 'en')) {
      case 'en':
        _language = Language.english;
        break;

      case 'de':
        _language = Language.german;
        break;

      case 'ar':
        _language = Language.arabic;
        break;

      case 'es':
        _language = Language.spanish;
        break;

      case 'pt':
        _language = Language.portugese;
        break;

      case 'it':
        _language = Language.italian;
        break;

      case 'fr':
        _language = Language.french;
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change_language'.tr()),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: _countryNames.length,
        itemBuilder: (context, index) {
          return LanguageListItem(
            title: _countryNames[index],
            country: _countryCodes[index],
            checked: _language == _languages[index],
            onTap: () {
              setState(() {
                _language = _languages[index];
                EasyLocalization.of(context).locale =
                    EasyLocalization.of(context).supportedLocales[index];
                Prefs.setString(Prefs.LANGUAGE, _countryCodes[index]);
              });
            },
          );
        },
      ),
    );
  }
}
