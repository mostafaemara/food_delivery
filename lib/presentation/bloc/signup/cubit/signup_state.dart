part of 'signup_cubit.dart';

enum SignupStatus { submitting, error, success, idle }

@immutable
class SignupState {
  final SignupStatus status;
  final Option<Failure> failureOrNone;
  final Either<ValidationFailure, String> emailOrFailure;
  final Either<ValidationFailure, String> passwordOrFailure;
  final Either<ValidationFailure, String> confirmPasswordOrFailure;

  const SignupState(
      {required this.status,
      required this.failureOrNone,
      required this.emailOrFailure,
      required this.passwordOrFailure,
      required this.confirmPasswordOrFailure});

  SignupState copyWith(
      {SignupStatus? status,
      Option<Failure>? failureOrNone,
      Either<ValidationFailure, String>? emailOrFailure,
      Either<ValidationFailure, String>? passwordOrFailure,
      Either<ValidationFailure, String>? confirmPasswordOrFailure}) {
    return SignupState(
        status: status ?? this.status,
        failureOrNone: failureOrNone ?? this.failureOrNone,
        emailOrFailure: emailOrFailure ?? this.emailOrFailure,
        passwordOrFailure: passwordOrFailure ?? this.passwordOrFailure,
        confirmPasswordOrFailure:
            confirmPasswordOrFailure ?? this.confirmPasswordOrFailure);
  }
}
