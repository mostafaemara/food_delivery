part of 'login_cubit.dart';

enum LoginStatus { submitting, error, success, idle }

class LoginState extends Equatable {
  final LoginStatus status;
  final Option<AuthFailure> failure;
  final Either<EmailValidationFailure, String> email;
  final Either<PasswordValidationFailure, String> password;
  const LoginState(
      {required this.failure,
      required this.status,
      required this.email,
      required this.password});

  LoginState copyWith(
      {Option<AuthFailure>? failure,
      Either<EmailValidationFailure, String>? email,
      Either<PasswordValidationFailure, String>? password,
      LoginStatus? status}) {
    return LoginState(
        status: status ?? this.status,
        email: email ?? this.email,
        password: password ?? this.password,
        failure: failure ?? this.failure);
  }

  @override
  List<Object?> get props => [status, email, password];
}
