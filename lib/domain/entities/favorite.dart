import 'package:food_delivery_app/core/multilingual.dart';

class Favorite {
  final String mealId;
  final Multilingual title;
  final String imageUrl;

  const Favorite({
    required this.mealId,
    required this.title,
    required this.imageUrl,
  });
  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Favorite && mealId == other.mealId;
  @override
  int get hashCode => mealId.hashCode;
}
