import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/data/mappers/config/sp_locale_mapper.dart';
import 'package:food_delivery_app/domain/entities/config/locale.dart';
import 'package:food_delivery_app/domain/repositories/config/locale_repository_interface.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SPLocaleRepository implements LocaleRepositoryInterface {
  final _localeKey = "locale";
  final _spLocaleMapper = SPLocaleMapper();
  final _prefs = SharedPreferences.getInstance();
  @override
  Future<Option<Locale>> getLocale() async {
    final prefs = await _prefs;
    final localeString = prefs.getString(_localeKey);
    if (localeString == null) {
      return none();
    } else {
      return some(_spLocaleMapper.mapStringToLocale(localeString));
    }
  }

  @override
  Future<void> setLocale(Locale locale) async {
    final prefs = await _prefs;

    final localeString = _spLocaleMapper.mapLocaleToString(locale);
    await prefs.setString(_localeKey, localeString);
  }
}
