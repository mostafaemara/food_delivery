import 'package:food_delivery_app/domain/entities/multilingual.dart';

extension MapToMultilingual on Map<String, dynamic> {
  Multilingual toMultilingual() {
    return Multilingual(english: this["en"], arabic: this["ar"]);
  }
}

class MultilingualMapper {
  static Map<String, dynamic> toMap(Multilingual multilingual) {
    return {"en": multilingual.english, "ar": multilingual.arabic};
  }

  static Multilingual toMultilingual(Map<String, dynamic> map) {
    return Multilingual(english: map["en"], arabic: map["ar"]);
  }
}

extension MultilingualToMap on Multilingual {
  Map<String, dynamic> toMap() {
    return {"en": english, "ar": arabic};
  }
}
