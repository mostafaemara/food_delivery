import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:validators/validators.dart';

ConfirmPasswordValidationFailure? validateConfirmPassword(
    String password, String confirmPassword) {
  if (confirmPassword.isEmpty) {
    return const ConfirmPasswordValidationFailure.empty();
  }
  if (confirmPassword != password) {
    return const ConfirmPasswordValidationFailure.passwordNotMatch();
  }
}

PasswordValidationFailure? validatePassword(String password) {
  if (password.isEmpty) {
    return const PasswordValidationFailure.empty();
  }
  if (password.length <= 6) {
    return const PasswordValidationFailure.shortPassword();
  }
}

EmailValidationFailure? validateEmail(String email) {
  if (email.isEmpty) {
    return const EmailValidationFailure.empty();
  }
  if (!isEmail(email)) {
    return const EmailValidationFailure.invalid();
  }
}

UserNameValidationFailure? validateUserName(String userName) {
  if (userName.isEmpty) {
    return const UserNameValidationFailure.empty();
  }
  if (!isAlphanumeric(userName)) {
    return const UserNameValidationFailure.invalid();
  }

  if (userName.length < 4) {
    return const UserNameValidationFailure.tooShort();
  }
}

Either<PhoneNumberValidationFailure, String> validatephoneNumber(
    String phoneNumber) {
  if (phoneNumber.isEmpty) {
    return left(const PhoneNumberValidationFailure.empty());
  }
  if (!isNumeric(phoneNumber)) {
    return left(const PhoneNumberValidationFailure.invalid());
  }

  if (phoneNumber.length != 11) {
    return left(const PhoneNumberValidationFailure.invalid());
  }
  return right(phoneNumber);
}

Either<AddressFieldValidationFailure, String> validateAddressField(
    String addressField) {
  if (addressField.isEmpty) {
    return left(const AddressFieldValidationFailure.empty());
  }

  return right(addressField);
}
