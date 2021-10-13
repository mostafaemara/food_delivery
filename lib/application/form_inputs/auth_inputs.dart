import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/domain/validators.dart';
import "package:formz/formz.dart";

class EmailInput extends FormzInput<String, EmailValidationFailure> {
  const EmailInput.pure() : super.pure("example@email.com");

  EmailInput.dirty(String value) : super.dirty(value);

  @override
  EmailValidationFailure? validator(String value) {
    return validateEmail(value);
  }
}

class PasswordInput extends FormzInput<String, PasswordValidationFailure> {
  const PasswordInput.pure() : super.pure("password123");

  PasswordInput.dirty(String value) : super.dirty(value);

  @override
  PasswordValidationFailure? validator(String value) {
    return validatePassword(value);
  }
}

class LoginForm with FormzMixin {
  final EmailInput emailInput;
  final PasswordInput passwordInput;

  LoginForm(
      {this.emailInput = const EmailInput.pure(),
      this.passwordInput = const PasswordInput.pure()});
  @override
  List<FormzInput> get inputs => [emailInput, passwordInput];
}

class UserNameInput extends FormzInput<String, UserNameValidationFailure> {
  const UserNameInput.pure() : super.pure("userName");

  UserNameInput.dirty(String value) : super.dirty(value);

  @override
  UserNameValidationFailure? validator(String value) {
    return validateUserName(value);
  }
}

class ConfirmPasswordInput
    extends FormzInput<String, ConfirmPasswordValidationFailure> {
  final String password;

  const ConfirmPasswordInput.pure({this.password = "password"})
      : super.pure("password");

  ConfirmPasswordInput.dirty(
      {required String confirmPassword, required this.password})
      : super.dirty(confirmPassword);

  @override
  ConfirmPasswordValidationFailure? validator(String value) {
    return validateConfirmPassword(password, value);
  }
}
