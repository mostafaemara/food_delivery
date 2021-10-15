import 'multilingual.dart';
import 'package:food_delivery_app/domain/entities/delivery_time.dart';

class Meal {
  final String id;
  final Multilingual title;
  final String imageUrl;
  final Multilingual shortDescription;
  final Multilingual description;
  final double calories;
  final double price;
  final DeliveryTime deliveryTime;

  const Meal(
      {required this.price,
      required this.id,
      required this.title,
      required this.imageUrl,
      required this.shortDescription,
      required this.description,
      required this.calories,
      required this.deliveryTime});
}
