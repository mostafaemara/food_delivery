import 'package:food_delivery_app/domain/entities/config/locale.dart';

class SPLocaleMapper {
  Locale mapStringToLocale(String locale) {
    if (locale == "en") {
      return const Locale(Locales.english);
    } else {
      return const Locale(Locales.arabic);
    }
  }

  String mapLocaleToString(Locale locale) {
    if (locale.locale == Locales.english) {
      return "en";
    } else {
      return "ar";
    }
  }
}
