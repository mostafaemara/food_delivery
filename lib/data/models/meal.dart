import 'package:food_delivery_app/core/multilingual.dart';
import 'package:food_delivery_app/data/models/delivery_time.dart';
import 'package:food_delivery_app/data/models/multilingual.dart';
import 'package:food_delivery_app/domain/entities/delivery_time.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';

class MealModel extends Meal {
  MealModel(
      {required double price,
      required String id,
      required Multilingual title,
      required String imageUrl,
      required Multilingual shortDescription,
      required Multilingual description,
      required double calories,
      required DeliveryTime deliveryTime})
      : super(
            price: price,
            calories: calories,
            id: id,
            deliveryTime: deliveryTime,
            description: description,
            imageUrl: imageUrl,
            title: title,
            shortDescription: shortDescription);

  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
        price: map["price"].toDouble(),
        calories: map["calories"].toDouble(),
        deliveryTime: DeliveryTimeModel.fromMap(map["deliveryTime"]),
        description: MultilingualModel.fromMap(map["description"]),
        id: map["id"],
        imageUrl: map["imageUrl"],
        shortDescription: MultilingualModel.fromMap(map["shortDescription"]),
        title: MultilingualModel.fromMap(map["title"]));
  }
}
