part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required EmailInput emailInput,
    required PasswordInput passwordInput,
    required ConfirmPasswordInput confirmPasswordInput,
    required UserNameInput userNameInput,
    required SubmissionState<AuthFailure> submissionState,
  }) = _SignupState;

  factory SignupState.initial() => const _SignupState(
      confirmPasswordInput: ConfirmPasswordInput.pure(),
      emailInput: EmailInput.pure(),
      passwordInput: PasswordInput.pure(),
      userNameInput: UserNameInput.pure(),
      submissionState: SubmissionState.idle());
}
