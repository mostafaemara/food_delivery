import 'package:equatable/equatable.dart';

class AuthParams extends Equatable {
  final String email;
  final String password;

  const AuthParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
