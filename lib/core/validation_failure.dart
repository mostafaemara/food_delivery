import 'package:freezed_annotation/freezed_annotation.dart';
part "validation_failure.freezed.dart";

@freezed
abstract class EmailValidationFailure with _$EmailValidationFailure {
  const factory EmailValidationFailure.invalid() = InvalidEmail;

  const factory EmailValidationFailure.empty() = Empty;
}

@freezed
abstract class PasswordValidationFailure with _$PasswordValidationFailure {
  const factory PasswordValidationFailure.shortPassword() = ShortPassword;

  const factory PasswordValidationFailure.empty() = EmptyPassword;
}

@freezed
abstract class ConfirmPasswordValidationFailure
    with _$ConfirmPasswordValidationFailure {
  const factory ConfirmPasswordValidationFailure.passwordNotMatch() =
      PasswordNotMatch;
  const factory ConfirmPasswordValidationFailure.empty() = EmptyConfirmPassword;
}

@freezed
abstract class UserNameValidationFailure with _$UserNameValidationFailure {
  const factory UserNameValidationFailure.invalid() = InvalidUserName;

  const factory UserNameValidationFailure.empty() = EmptyUserName;
  const factory UserNameValidationFailure.tooShort() = TooShortUserName;
}

@freezed
abstract class PhoneNumberValidationFailure
    with _$PhoneNumberValidationFailure {
  const factory PhoneNumberValidationFailure.invalid() = InvalidPhoneNumber;

  const factory PhoneNumberValidationFailure.empty() = EmptyPhoneNumber;
}

@freezed
abstract class AddressFieldValidationFailure
    with _$AddressFieldValidationFailure {
  const factory AddressFieldValidationFailure.empty() = EmptyAddressField;
}
