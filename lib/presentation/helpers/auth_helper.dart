import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';

extension AuthHelper on AuthState {
  String getUserId() {
    return maybeWhen(
      authenticated: (user) => user.id,
      orElse: () => throw Exception("user Not Authinticated"),
    );
  }
}
