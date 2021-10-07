part of 'signup_cubit.dart';

enum SignupStatus { submitting, error, success, idle }

@immutable
class SignupState {
  final SignupStatus status;
  final Option<AuthFailure> failureOrNone;
  final Either<EmailValidationFailure, String> emailOrFailure;
  final Either<PasswordValidationFailure, String> passwordOrFailure;
  final Either<ConfirmPasswordValidationFailure, String>
      confirmPasswordOrFailure;

  const SignupState(
      {required this.status,
      required this.failureOrNone,
      required this.emailOrFailure,
      required this.passwordOrFailure,
      required this.confirmPasswordOrFailure});

  SignupState copyWith(
      {SignupStatus? status,
      Option<AuthFailure>? failureOrNone,
      Either<EmailValidationFailure, String>? emailOrFailure,
      Either<PasswordValidationFailure, String>? passwordOrFailure,
      Either<ConfirmPasswordValidationFailure, String>?
          confirmPasswordOrFailure}) {
    return SignupState(
        status: status ?? this.status,
        failureOrNone: failureOrNone ?? this.failureOrNone,
        emailOrFailure: emailOrFailure ?? this.emailOrFailure,
        passwordOrFailure: passwordOrFailure ?? this.passwordOrFailure,
        confirmPasswordOrFailure:
            confirmPasswordOrFailure ?? this.confirmPasswordOrFailure);
  }
}
