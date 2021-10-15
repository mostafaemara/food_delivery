import 'package:food_delivery_app/domain/failures/validation_failure.dart';
import 'package:food_delivery_app/domain/validators/validators.dart';
import 'package:formz/formz.dart';
import 'input_helper.dart';

class ConfirmPasswordInput
    extends FormzInput<String, ConfirmPasswordValidationFailure>
    with FormzInputHelper {
  final String password;

  const ConfirmPasswordInput.pure({this.password = ""})
      : super.pure("password");

  ConfirmPasswordInput.dirty(
      {required String? confirmPassword, required this.password})
      : super.dirty(confirmPassword ?? "");

  @override
  ConfirmPasswordValidationFailure? validator(String value) {
    final failureOrNone = validateConfirmPassword(password, value);
    return failureOrNone.fold(() => null, (failure) => failure);
  }
}
