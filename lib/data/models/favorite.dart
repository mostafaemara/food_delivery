import 'package:food_delivery_app/data/models/multilingual.dart';
import 'package:food_delivery_app/domain/entities/favorite.dart';
import 'package:food_delivery_app/domain/entities/multilingual.dart';

class FavoriteModel extends Favorite {
  FavoriteModel({
    required String mealId,
    required Multilingual title,
    required String imageUrl,
  }) : super(imageUrl: imageUrl, title: title, mealId: mealId);

  factory FavoriteModel.fromMap(Map<String, dynamic> map) {
    return FavoriteModel(
        mealId: map["id"],
        imageUrl: map["imageUrl"],
        title: MultilingualModel.fromMap(map["title"]));
  }
}
