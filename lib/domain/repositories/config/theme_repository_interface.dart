import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/config/theme.dart';

abstract class ThemeRepositoryInterface {
  Future<Option<Theme>> getTheme();
  Future<void> setTheme(Theme theme);
}
