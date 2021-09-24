import 'package:food_delivery_app/data/mappers/config/sp_theme_mapper.dart';
import 'package:food_delivery_app/domain/entities/config/theme.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/repositories/config/theme_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPThemeRepository implements ThemeRepositoryInterface {
  final _themeKey = "theme";
  final _spThemeMapper = SPThemeMapper();

  final _prefs = SharedPreferences.getInstance();
  @override
  Future<Option<Theme>> getTheme() async {
    final prefs = await _prefs;
    final themeString = prefs.getString(_themeKey);
    if (themeString == null) {
      return none();
    } else {
      return some(_spThemeMapper.mapStringToTheme(themeString));
    }
  }

  @override
  Future<void> setTheme(Theme theme) async {
    final prefs = await _prefs;
    await prefs.setString(_themeKey, _spThemeMapper.mapThemeToString(theme));
  }
}
