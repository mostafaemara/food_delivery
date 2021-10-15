import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/theme.dart';

abstract class ThemeRepository {
  Future<Option<Theme>> getTheme();
  Future<void> setTheme(Theme theme);
}
