import 'package:food_delivery_app/domain/entities/profile.dart';

extension ProfileMapper on Profile {
  Map<String, dynamic> toMap() {
    return {"phoneNumber": phoneNumber, "userName": userName};
  }
}
