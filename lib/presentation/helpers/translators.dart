import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/multilingual.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/domain/entities/order_status.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

extension DateFormatTranslator on DateTime {
  String translateAndFormat(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final DateFormat dateFormat = DateFormat.yMd(locale.languageCode);
    return dateFormat.format(this);
  }
}

extension OrderStatusTranslator on OrderStatus {
  String translate(BuildContext context) {
    return when(
      submitted: () => AppLocalizations.of(context)!.submitted,
      onTheWayToYou: () => AppLocalizations.of(context)!.onTheWayToYou,
      recevied: () => AppLocalizations.of(context)!.recevied,
    );
  }
}
