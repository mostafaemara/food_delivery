import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/domain/validators.dart';
import "package:formz/formz.dart";

class EmailInput extends FormzInput<String, EmailValidationFailure> {
  const EmailInput.pure() : super.pure("");

  EmailInput.dirty(String? value) : super.dirty(value ?? "");

  @override
  EmailValidationFailure? validator(String value) {
    return null;
  }
}

class PasswordInput extends FormzInput<String, PasswordValidationFailure> {
  const PasswordInput.pure() : super.pure("");

  PasswordInput.dirty(String? value) : super.dirty(value ?? "");

  @override
  PasswordValidationFailure? validator(String value) {
    return null;
  }
}

class UserNameInput extends FormzInput<String, UserNameValidationFailure> {
  const UserNameInput.pure() : super.pure("");

  UserNameInput.dirty(String? value) : super.dirty(value ?? "");

  @override
  UserNameValidationFailure? validator(String value) {
    return validateUserName(value);
  }
}

class ConfirmPasswordInput
    extends FormzInput<String, ConfirmPasswordValidationFailure> {
  final String password;

  const ConfirmPasswordInput.pure({this.password = ""})
      : super.pure("password");

  ConfirmPasswordInput.dirty(
      {required String? confirmPassword, required this.password})
      : super.dirty(confirmPassword ?? "");

  @override
  ConfirmPasswordValidationFailure? validator(String value) {
    return validateConfirmPassword(password, value);
  }
}
