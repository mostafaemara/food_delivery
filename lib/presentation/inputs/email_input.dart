import 'package:food_delivery_app/domain/failures/validation_failure.dart';
import 'package:food_delivery_app/domain/validators/validators.dart';
import 'package:formz/formz.dart';
import 'input_helper.dart';

class EmailInput extends FormzInput<String, EmailValidationFailure>
    with FormzInputHelper {
  const EmailInput.pure() : super.pure("");

  EmailInput.dirty(String? value) : super.dirty(value ?? "");

  @override
  EmailValidationFailure? validator(String value) {
    final result = validateEmail(value);
    return result.fold(() => null, (failure) => failure);
  }
}
