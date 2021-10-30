import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/delivery_time.dart';
import 'package:food_delivery_app/data/models/multilingual.dart';
import 'package:food_delivery_app/domain/entities/delivery_time.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/multilingual.dart';

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
  factory MealModel.fromDocument(
      DocumentSnapshot<Map<String, dynamic>> document) {
    return MealModel(
        price: document.data()!["price"].toDouble(),
        calories: document.data()!["calories"].toDouble(),
        deliveryTime:
            DeliveryTimeModel.fromMap(document.data()!["deliveryTime"]),
        description: MultilingualModel.fromMap(document.data()!["description"]),
        id: document.id,
        imageUrl: document.data()!["imageUrl"],
        shortDescription:
            MultilingualModel.fromMap(document.data()!["shortDescription"]),
        title: MultilingualModel.fromMap(document.data()!["title"]));
  }
}
