part of 'login_cubit.dart';

enum LoginStatus { submitting, error, success, idle }

class LoginState extends Equatable {
  final LoginStatus status;

  final Either<ValidationFailure, String> email;
  final Either<ValidationFailure, String> password;
  const LoginState(this.status, this.email, this.password);

  LoginState copyWith(
      {Either<ValidationFailure, String>? email,
      Either<ValidationFailure, String>? password,
      LoginStatus? status}) {
    return LoginState(
        status ?? this.status, email ?? this.email, password ?? this.password);
  }

  @override
  List<Object?> get props => [status, email, password];
}
