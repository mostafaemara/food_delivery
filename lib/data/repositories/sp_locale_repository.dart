import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/data/models/locale.dart';
import 'package:food_delivery_app/domain/entities/locale.dart';
import 'package:food_delivery_app/domain/repositories/locale_repository.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SPLocaleRepository implements LocaleRepository {
  final _localeKey = "locale";

  final _prefs = SharedPreferences.getInstance();
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
