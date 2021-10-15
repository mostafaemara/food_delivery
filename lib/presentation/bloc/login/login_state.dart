part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required EmailInput emailInput,
    required PasswordInput passwordInput,
    required SubmissionState<AuthFailure> submissionState,
  }) = _LoginState;

  factory LoginState.initial() => const _LoginState(
      emailInput: EmailInput.pure(),
      passwordInput: PasswordInput.pure(),
      submissionState: SubmissionState.idle());
}
