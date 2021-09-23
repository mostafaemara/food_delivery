import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/entities/config/locale.dart';

abstract class LocaleRepositoryInterface {
  Future<Option<Locale>> getLocale();
  Future<void> setLocale(Locale locale);
}
