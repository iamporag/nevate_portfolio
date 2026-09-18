// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/localizations/language.dart';
import '../helpers/storage/local_storage.dart';
import '../widgets/my.dart';
import 'app_style.dart' show AppStyle;
import 'app_themes.dart';
import 'theme_customizer.dart';

class AppNotifier extends ChangeNotifier {
  AppNotifier();

  Future<void> init() async {
    _changeTheme();
    notifyListeners();
  }

  updateTheme(ThemeCustomizer themeCustomizer) {
    _changeTheme();

    notifyListeners();

    LocalStorage.setCustomizer(themeCustomizer);
  }

  Future<void> updateInStorage(ThemeCustomizer themeCustomizer) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("theme_customizer", themeCustomizer.toJSON());
  }

  void changeDirectionality(TextDirection textDirection, [bool notify = true]) {
    AppTheme.textDirection = textDirection;
    My.setTextDirection(textDirection);

    if (notify) notifyListeners();
  }

  Future<void> changeLanguage(Language language,
      {bool notify = true, bool changeDirection = true}) async {
    if (changeDirection) {
      if (language.supportRTL) {
        changeDirectionality(TextDirection.rtl, false);
      } else {
        changeDirectionality(TextDirection.ltr, false);
      }
    }

    await ThemeCustomizer.changeLanguage(language);

    if (notify) notifyListeners();
  }

  void _changeTheme() {
    // Fallback: use a default light ThemeData if the helper method is not available.
    AppTheme.theme = ThemeData.light();
    AppStyle.changeMyTheme();
  }
}
