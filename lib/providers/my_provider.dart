import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode themeMode = ThemeMode.light;

  changeLanguage(String code) {
    languageCode = code;
    notifyListeners();
  }

  changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  String getBackgroundImagePath() {
    if (themeMode == ThemeMode.light) {
      return "assets/images/background.png";
    } else {
      return "assets/images/bg_dark.png";
    }
  }
}
