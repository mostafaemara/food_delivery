part of 'signup_cubit.dart';

@immutable
class SignupState {
  final bool isSubmitting;
  final bool isSuccess;
  final Option<AuthFailure> failureOrNone;
  final Either<EmailValidationFailure, String> emailOrFailure;
  final Either<PasswordValidationFailure, String> passwordOrFailure;
  final Either<UserNameValidationFailure, String> userNameOrFailure;
  final Either<ConfirmPasswordValidationFailure, String>
      confirmPasswordOrFailure;

  const SignupState._(
      {required this.isSubmitting,
      required this.isSuccess,
      required this.userNameOrFailure,
      required this.failureOrNone,
      required this.emailOrFailure,
      required this.passwordOrFailure,
      required this.confirmPasswordOrFailure});

  factory SignupState.initial() => SignupState._(
      userNameOrFailure: right(""),
      isSuccess: false,
      isSubmitting: false,
      failureOrNone: none(),
      emailOrFailure: right(""),
      passwordOrFailure: right(""),
      confirmPasswordOrFailure: right(""));

  SignupState copyWith(
      {Option<AuthFailure>? failureOrNone,
      bool? isSubmitting,
      bool? isSuccess,
      Either<EmailValidationFailure, String>? emailOrFailure,
      Either<PasswordValidationFailure, String>? passwordOrFailure,
      Either<UserNameValidationFailure, String>? userNameOrFailure,
      Either<ConfirmPasswordValidationFailure, String>?
          confirmPasswordOrFailure}) {
    return SignupState._(
        isSubmitting: isSubmitting ?? this.isSubmitting,
        isSuccess: isSuccess ?? this.isSuccess,
        userNameOrFailure: userNameOrFailure ?? this.userNameOrFailure,
        failureOrNone: failureOrNone ?? this.failureOrNone,
        emailOrFailure: emailOrFailure ?? this.emailOrFailure,
        passwordOrFailure: passwordOrFailure ?? this.passwordOrFailure,
        confirmPasswordOrFailure:
            confirmPasswordOrFailure ?? this.confirmPasswordOrFailure);
  }
}
