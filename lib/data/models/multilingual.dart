import 'package:food_delivery_app/domain/entities/multilingual.dart';

class MultilingualModel extends Multilingual {
  const MultilingualModel({required String english, required String arabic})
      : super(english: english, arabic: arabic);

  factory MultilingualModel.fromMap(Map<String, dynamic> map) {
    return MultilingualModel(english: map["en"], arabic: map["ar"]);
  }
}
