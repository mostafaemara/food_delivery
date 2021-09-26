import 'package:food_delivery_app/domain/entities/locale.dart';

class LocaleModel extends Locale {
  String localeToString() {
    if (locale == Locales.english) {
      return "en";
    } else {
      return "ar";
    }
  }

  const LocaleModel(Locales locale) : super(locale);

  factory LocaleModel.fromString(String locale) {
    if (locale == "en") {
      return const LocaleModel(Locales.english);
    } else {
      return const LocaleModel(Locales.arabic);
    }
  }
}
