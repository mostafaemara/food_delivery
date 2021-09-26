import 'package:food_delivery_app/core/multilingual.dart';

class MultilingualModel extends Multilingual {
  MultilingualModel({required String english, required String arabic})
      : super(english: english, arabic: arabic);

  factory MultilingualModel.fromMap(Map<String, dynamic> map) {
    return MultilingualModel(english: map["en"], arabic: map["ar"]);
  }
}