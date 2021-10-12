part of 'login_cubit.dart';

class LoginState extends Equatable {
  final bool isSubmitting;
  final bool isSuccess;
  final Option<AuthFailure> failure;
  final Either<EmailValidationFailure, String> email;
  final Either<PasswordValidationFailure, String> password;
  const LoginState._(
      {required this.isSubmitting,
      required this.isSuccess,
      required this.failure,
      required this.email,
      required this.password});

  factory LoginState.intial() => LoginState._(
      isSubmitting: false,
      isSuccess: false,
      failure: none(),
      email: right(""),
      password: right(""));

  LoginState copyWith({
    bool? isSubmitting,
    bool? isSuccess,
    Option<AuthFailure>? failure,
    Either<EmailValidationFailure, String>? email,
    Either<PasswordValidationFailure, String>? password,
  }) {
    return LoginState._(
        isSubmitting: isSubmitting ?? this.isSubmitting,
        isSuccess: isSuccess ?? this.isSuccess,
        email: email ?? this.email,
        password: password ?? this.password,
        failure: failure ?? this.failure);
  }

  @override
  List<Object?> get props => [isSubmitting, isSuccess, email, password];
}
