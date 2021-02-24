import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/user.dart';

class Prefs {
  static const String DARKTHEME = "dark_theme";

  static const String ACCESS_TOKEN = "access_token";
  static const String REFRESH_TOKEN = "refresh_token";
  static const String GCM_TOKEN = "gcm_token";
  static const String ID = "id";
  static const String USERNAME = "username";
  static const String FIRST_NAME = "first_name";
  static const String LAST_NAME = "last_name";
  static const String EMAIL = "email";
  static const String PHONE = "phone";
  static const String AVATAR = "avatar";
  static const String FIRST_TIME = "first_time";
  static const String LOGIN_STATUS = "login_status";
  static const String LANGUAGE = "language";

  static SharedPreferences _prefs;
  static Map<String, dynamic> _memoryPrefs = Map<String, dynamic>();

  static Future<SharedPreferences> load() async {
    if (_prefs == null) {
      _prefs = await SharedPreferences.getInstance();
    }
    return _prefs;
  }

  static void setString(String key, String value) {
    _prefs.setString(key, value);
    _memoryPrefs[key] = value;
  }

  static void setInt(String key, int value) {
    _prefs.setInt(key, value);
    _memoryPrefs[key] = value;
  }

  static void setDouble(String key, double value) {
    _prefs.setDouble(key, value);
    _memoryPrefs[key] = value;
  }

  static void setBool(String key, bool value) {
    _prefs.setBool(key, value);
    _memoryPrefs[key] = value;
  }

  static String getString(String key, {String def}) {
    String val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (val == null) {
      val = _prefs.getString(key);
    }
    if (val == null) {
      val = def;
    }
    _memoryPrefs[key] = val;
    return val;
  }

  static int getInt(String key, {int def}) {
    int val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (val == null) {
      val = _prefs.getInt(key);
    }
    if (val == null) {
      val = def;
    }
    _memoryPrefs[key] = val;
    return val;
  }

  static double getDouble(String key, {double def}) {
    double val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (val == null) {
      val = _prefs.getDouble(key);
    }
    if (val == null) {
      val = def;
    }
    _memoryPrefs[key] = val;
    return val;
  }

  static bool getBool(String key, {bool def = false}) {
    bool val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (val == null) {
      val = _prefs.getBool(key);
    }
    if (val == null) {
      val = def;
    }
    _memoryPrefs[key] = val;
    return val;
  }

  static String getName() {
    return '${getString(FIRST_NAME)} ${getString(LAST_NAME)}';
  }

  static String getUsername() {
    return getString(USERNAME);
  }

  static int getID() {
    return getInt(ID, def: -1);
  }

  static User getUser() {
    return User(
      id: getInt(ID),
      firstName: getString(FIRST_NAME),
      lastName: getString(LAST_NAME),
      avatar: getString(AVATAR),
    );
  }

  static bool isDark() {
    return getBool(DARKTHEME);
  }

  static Future<void> clear() {
    _memoryPrefs.clear();
    return _prefs.clear();
  }
}
