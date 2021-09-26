import 'package:food_delivery_app/core/multilingual.dart';
import 'package:food_delivery_app/data/models/multilingual.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

class MealCategoryModel extends MealCategory {
  const MealCategoryModel(
      {required Multilingual title,
      required String imageUrl,
      required String id})
      : super(id: id, imageUrl: imageUrl, title: title);

  factory MealCategoryModel.fromMap(Map<String, dynamic> map) {
    return MealCategoryModel(
        title: MultilingualModel.fromMap(map["title"]),
        imageUrl: map["imageUrl"],
        id: map["id"]);
  }
}
