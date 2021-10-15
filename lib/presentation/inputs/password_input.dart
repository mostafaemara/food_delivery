import 'package:food_delivery_app/domain/failures/validation_failure.dart';
import 'package:food_delivery_app/domain/validators/validators.dart';
import 'package:formz/formz.dart';
import 'input_helper.dart';

class PasswordInput extends FormzInput<String, PasswordValidationFailure>
    with FormzInputHelper {
  const PasswordInput.pure() : super.pure("");

  PasswordInput.dirty(String? value) : super.dirty(value ?? "");

  @override
  PasswordValidationFailure? validator(String value) {
    final failureOrNone = validatePassword(value);
    return failureOrNone.fold(() => null, (failure) => failure);
  }
}
