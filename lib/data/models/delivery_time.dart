import 'package:food_delivery_app/domain/entities/delivery_time.dart';

class DeliveryTimeModel extends DeliveryTime {
  DeliveryTimeModel({required double min, required double max})
      : super(min: min, max: max);

  factory DeliveryTimeModel.fromMap(Map<String, dynamic> map) {
    return DeliveryTimeModel(
        min: map["min"].toDouble(), max: map["max"].toDouble());
  }
}
