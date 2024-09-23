import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../localization/language_manager.dart';
import '../themes/theme_manager.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  String PREFS_KEY_LANG = 'PREFS_KEY_LANG';
  String PREFS_KEY_TOKEN = 'PREFS_KEY_TOKEN';
  String PREFS_KEY_THEME = 'PREFS_KEY_THEME';
  String PREFS_KEY_ON_BOARDING = 'PREFS_KEY_ON_BOARDING';
  String PREFS_KEY_USER_INFO = 'PREFS_KEY_USER_INFO';

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<void> setAppLanguage({required String lang}) async {
    String currentLanguage = await getAppLanguage();
    if (lang == currentLanguage) {
    } else {
      _sharedPreferences.setString(PREFS_KEY_LANG, lang);
    }
  }

  Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  Future<void> setUserToken(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN) ?? '';
  }

  bool isLoggedIn() {
    String? token = _sharedPreferences.getString(PREFS_KEY_TOKEN);
    if (token?.isNotEmpty ?? false) {
      return true;
    } else {
      return false;
    }
  }

  ThemeData getTheme() {
    String? theme = _sharedPreferences.getString(PREFS_KEY_THEME);
    if (theme == ThemeDataType.dark.toString()) {
      return darkTheme();
    } else {
      return lightTheme();
    }
  }

  setTheme({required ThemeData themeData}) {
    _sharedPreferences.setString(PREFS_KEY_THEME, themeData.getValue());
  }

//--------------------------------------------------

//-------------OnBoarding----------------------
  Future<void> setShowOnBoarding(bool show) async {
    await _sharedPreferences.setBool(PREFS_KEY_ON_BOARDING, show);
  }

  bool isShowOnBoarding() {
    return _sharedPreferences.getBool(PREFS_KEY_ON_BOARDING) ?? false;
  }

//---------------------------------------------
//-------------User info----------------------

//---------------------------------------------
}
