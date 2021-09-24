import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:validators/validators.dart';

Either<ValidationFailure, String> validateConfirmPassword(
    String password, String confirmPassword) {
  if (confirmPassword.isEmpty) {
    return left(Empty());
  }
  if (confirmPassword != password) {
    return left(PasswordNotMatch());
  }
  return right(confirmPassword);
}

Either<ValidationFailure, String> validatePassword(String password) {
  if (password.isEmpty) {
    return left(Empty());
  }
  if (password.length <= 6) {
    return left(ShortPassword());
  }
  return right(password);
}

Either<ValidationFailure, String> validateEmail(String email) {
  if (email.isEmpty) {
    return left(Empty());
  }
  if (!isEmail(email)) {
    return left(InvalidEmail());
  }
  return right(email);
}
