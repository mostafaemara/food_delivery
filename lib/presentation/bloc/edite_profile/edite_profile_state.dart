part of 'edite_profile_cubit.dart';

@immutable
class EditeProfileState {
  final Either<UserNameValidationFailure, String> usernameOrfailure;
  final Either<PhoneNumberValidationFailure, String> phoneNumberOrfailure;
  final Option<ProfileFailure> failure;
  final bool isSubmiting;
  final bool isSuccess;

  const EditeProfileState(
      {required this.isSuccess,
      required this.usernameOrfailure,
      required this.phoneNumberOrfailure,
      required this.failure,
      required this.isSubmiting});

  EditeProfileState copyWith(
      {Either<UserNameValidationFailure, String>? usernameOrfailure,
      Either<PhoneNumberValidationFailure, String>? phoneNumberOrfailure,
      Option<ProfileFailure>? failure,
      bool? isSuccess,
      bool? isSubmiting}) {
    return EditeProfileState(
        isSuccess: isSuccess ?? this.isSuccess,
        usernameOrfailure: usernameOrfailure ?? this.usernameOrfailure,
        phoneNumberOrfailure: phoneNumberOrfailure ?? this.phoneNumberOrfailure,
        failure: failure ?? this.failure,
        isSubmiting: isSubmiting ?? this.isSubmiting);
  }
}
