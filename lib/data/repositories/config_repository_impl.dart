import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/data/models/locale.dart';
import 'package:food_delivery_app/data/models/theme.dart';
import 'package:food_delivery_app/domain/entities/locale.dart';
import 'package:food_delivery_app/domain/entities/theme.dart';
import 'package:food_delivery_app/domain/repositories/config_repository.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ConfigRepositoryImpl implements ConfigRepository {
  final _themeKey = "theme";
  final _isFirstTimeKey = "isFirstTime";
  final _localeKey = "locale";
  final _prefs = SharedPreferences.getInstance();

  @override
  Future<Option<Theme>> getTheme() async {
    final prefs = await _prefs;
    final themeString = prefs.getString(_themeKey);
    if (themeString == null) {
      return none();
    } else {
      return some(ThemeModel.fromString(themeString));
    }
  }

  @override
  Future<void> setTheme(Theme theme) async {
    final prefs = await _prefs;
    await prefs.setString(
        _themeKey, ThemeModel(theme.themeMode).themeToString());
  }

  @override
  Future<bool> getFirstTime() async {
    final prefs = await _prefs;
    final isFirstTime = prefs.getBool(_isFirstTimeKey);
    if (isFirstTime == null) {
      return true;
    } else {
      return isFirstTime;
    }
  }

  @override
  Future<void> setFirstTime(bool isFirstTime) async {
    final prefs = await _prefs;
    await prefs.setBool(_isFirstTimeKey, isFirstTime);
  }

  @override
  Future<Option<Locale>> getLocale() async {
    final prefs = await _prefs;
    final localeString = prefs.getString(_localeKey);
    if (localeString == null) {
      return none();
    } else {
      return some(LocaleModel.fromString(localeString));
    }
  }

  @override
  Future<void> setLocale(Locale locale) async {
    final prefs = await _prefs;

    final localeString = LocaleModel(locale.locale).localeToString();
    await prefs.setString(_localeKey, localeString);
  }
}
