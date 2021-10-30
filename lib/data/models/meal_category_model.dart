import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/multilingual.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';
import 'package:food_delivery_app/domain/entities/multilingual.dart';

class MealCategoryModel extends MealCategory {
  const MealCategoryModel(
      {required Multilingual title,
      required String imageUrl,
      required String id})
      : super(id: id, imageUrl: imageUrl, title: title);

  factory MealCategoryModel.fromDocument(
      QueryDocumentSnapshot<Map<String, dynamic>> document) {
    return MealCategoryModel(
        title: MultilingualModel.fromMap(document.data()["title"]),
        imageUrl: document.data()["imageUrl"],
        id: document.id);
  }
}
