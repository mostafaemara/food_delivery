import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/multilingual.dart';

final arabicNumber = ArabicNumbers();

extension MultilingualTranslator on Multilingual {
  String translate(BuildContext context) {
    final locale = Localizations.localeOf(context);
    if (locale.languageCode == "ar") {
      return arabic;
    } else {
      return english;
    }
  }
}

extension DoubleTranslator on double {
  String translate(BuildContext context) {
    final locale = Localizations.localeOf(context);
    if (locale.languageCode == "ar") {
      return arabicNumber.convert(toStringAsFixed(0));
    } else {
      return toStringAsFixed(0);
    }
  }
}

extension IntTranslator on int {
  String translate(BuildContext context) {
    final locale = Localizations.localeOf(context);
    if (locale.languageCode == "ar") {
      return arabicNumber.convert(toString());
    } else {
      return toString();
    }
  }
}
