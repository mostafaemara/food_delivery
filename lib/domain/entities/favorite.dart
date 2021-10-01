import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/core/multilingual.dart';

class Favorite extends Equatable {
  final String mealId;
  final Multilingual title;
  final String imageUrl;

  const Favorite({
    required this.mealId,
    required this.title,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        mealId,
      ];
}
