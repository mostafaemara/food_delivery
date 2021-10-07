import 'package:food_delivery_app/domain/entities/profile.dart';

class ProfileModel extends Profile {
  ProfileModel(
      {required final String userName, required final String phoneNumber})
      : super(phoneNumber: phoneNumber, userName: userName);

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
        phoneNumber: map["phoneNumber"], userName: map["userName"]);
  }
}
