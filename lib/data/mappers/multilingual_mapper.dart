import 'package:food_delivery_app/domain/entities/multilingual.dart';

extension MultilingualMapper on Map<String, dynamic> {
  Multilingual toMultilingual() {
    return Multilingual(english: this["en"], arabic: this["ar"]);
  }
}
