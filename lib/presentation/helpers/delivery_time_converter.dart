import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/delivery_time.dart';
import 'translators.dart';

extension DeliveryTimeConverter on DeliveryTime {
  String combineAndTranslate(BuildContext context) {
    return "${min.translate(context)}-${max.translate(context)}";
  }
}
