import 'package:food_delivery_app/domain/failures/validation_failure.dart';

import 'package:food_delivery_app/domain/validators/validators.dart';
import 'package:formz/formz.dart';
import 'input_helper.dart';

class UserNameInput extends FormzInput<String, UserNameValidationFailure>
    with FormzInputHelper {
  const UserNameInput.pure() : super.pure("");

  UserNameInput.dirty(String? value) : super.dirty(value ?? "");

  @override
  UserNameValidationFailure? validator(String value) {
    final failureOrNone = validateUserName(value);
    return failureOrNone.fold(() => null, (failure) => failure);
  }
}
