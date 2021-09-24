part of 'login_cubit.dart';

enum LoginStatus { submitting, error, success, idle }

class LoginState extends Equatable {
  final LoginStatus status;
  final Option<Failure> failure;
  final Either<ValidationFailure, String> email;
  final Either<ValidationFailure, String> password;
  const LoginState(
      {required this.failure,
      required this.status,
      required this.email,
      required this.password});

  LoginState copyWith(
      {Option<Failure>? failure,
      Either<ValidationFailure, String>? email,
      Either<ValidationFailure, String>? password,
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
