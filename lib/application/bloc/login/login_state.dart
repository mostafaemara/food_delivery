part of 'login_cubit.dart';

class LoginState {
  final Option<AuthFailure> failure;
  final EmailInput email;
  final PasswordInput password;
  final FormzStatus status;
  const LoginState._({
    required this.status,
    required this.email,
    required this.password,
    required this.failure,
  });

  factory LoginState.intial() => LoginState._(
      status: FormzStatus.pure,
      failure: none(),
      email: const EmailInput.pure(),
      password: const PasswordInput.pure());

  LoginState copyWith(
      {Option<AuthFailure>? failure,
      PasswordInput? password,
      FormzStatus? status,
      EmailInput? email}) {
    return LoginState._(
        status: status ?? this.status,
        failure: failure ?? this.failure,
        email: email ?? this.email,
        password: password ?? this.password);
  }
}
