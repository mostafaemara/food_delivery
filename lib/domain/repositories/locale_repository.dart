import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/entities/locale.dart';

abstract class LocaleRepository {
  Future<Option<Locale>> getLocale();
  Future<void> setLocale(Locale locale);
}
