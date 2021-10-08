import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/delivery_time.dart';
import 'translators.dart';

extension DeliveryTimeConverter on DeliveryTime {
  String combineAndTranslate(Locale locale) {
    return "${min.translate(locale)}-${max.translate(locale)}";
  }
}
