part of 'signup_cubit.dart';

@immutable
class SignupState {
  final FormzStatus formStatus;
  final Option<AuthFailure> failureOrNone;
  final EmailInput email;
  final PasswordInput password;
  final UserNameInput userName;
  final ConfirmPasswordInput confirmPassword;

  const SignupState._(
      {required this.failureOrNone,
      required this.formStatus,
      required this.email,
      required this.password,
      required this.userName,
      required this.confirmPassword});

  factory SignupState.initial() => SignupState._(
        failureOrNone: none(),
        confirmPassword: const ConfirmPasswordInput.pure(),
        email: const EmailInput.pure(),
        formStatus: FormzStatus.pure,
        password: const PasswordInput.pure(),
        userName: const UserNameInput.pure(),
      );

  SignupState copyWith({
    FormzStatus? formStatus,
    Option<AuthFailure>? failureOrNone,
    EmailInput? email,
    PasswordInput? password,
    UserNameInput? userName,
    ConfirmPasswordInput? confirmPassword,
  }) {
    return SignupState._(
        confirmPassword: confirmPassword ?? this.confirmPassword,
        email: email ?? this.email,
        failureOrNone: failureOrNone ?? this.failureOrNone,
        formStatus: formStatus ?? this.formStatus,
        password: password ?? this.password,
        userName: userName ?? this.userName);
  }
}
