import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/entities/locale.dart';
import 'package:food_delivery_app/domain/entities/theme.dart';

abstract class ConfigRepository {
  Future<bool> getFirstTime();
  Future<void> setFirstTime(bool isFirstTime);
  Future<Option<Theme>> getTheme();
  Future<void> setTheme(Theme theme);
  Future<Option<Locale>> getLocale();
  Future<void> setLocale(Locale locale);
}
