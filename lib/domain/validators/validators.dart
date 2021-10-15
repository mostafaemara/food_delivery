import 'package:dartz/dartz.dart';

import 'package:validators/validators.dart';
import "../failures/validation_failure.dart";

Option<ConfirmPasswordValidationFailure> validateConfirmPassword(
    String password, String confirmPassword) {
  if (confirmPassword.isEmpty) {
    return some(const ConfirmPasswordValidationFailure.empty());
  }
  if (confirmPassword != password) {
    return some(const ConfirmPasswordValidationFailure.passwordNotMatch());
  }
  return none();
}

Option<PasswordValidationFailure> validatePassword(String password) {
  if (password.isEmpty) {
    return some(const PasswordValidationFailure.empty());
  }
  if (password.length <= 6) {
    return some(const PasswordValidationFailure.shortPassword());
  }
  return none();
}

Option<EmailValidationFailure> validateEmail(String email) {
  if (email.isEmpty) {
    return some(const EmailValidationFailure.empty());
  }
  if (!isEmail(email)) {
    return some(const EmailValidationFailure.invalid());
  }
  return none();
}

Option<UserNameValidationFailure> validateUserName(String userName) {
  if (userName.isEmpty) {
    return some(const UserNameValidationFailure.empty());
  }
  if (!isAlphanumeric(userName)) {
    return some(const UserNameValidationFailure.invalid());
  }

  if (userName.length < 4) {
    return some(const UserNameValidationFailure.tooShort());
  }

  return none();
}

Option<MobilePhoneNumberValidationFailure> validateMobilePhoneNumber(
    String phoneNumber) {
  if (phoneNumber.isEmpty) {
    return some(const MobilePhoneNumberValidationFailure.empty());
  }
  if (!isNumeric(phoneNumber)) {
    return some(const MobilePhoneNumberValidationFailure.invalid());
  }

  if (phoneNumber.length != 11) {
    return some(const MobilePhoneNumberValidationFailure.invalid());
  }
  return none();
}

Option<AddressFieldValidationFailure> validateAddressField(
    String addressField) {
  if (addressField.isEmpty) {
    return some(const AddressFieldValidationFailure.empty());
  }

  return none();
}
