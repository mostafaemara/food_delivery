import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:food_delivery_app/features/auth/domain/entities/user.dart';

extension UserCredentialMapper on firebase_auth.UserCredential {
  User toDomainUser() {
    return User(email: user!.email!, id: user!.uid);
  }
}
