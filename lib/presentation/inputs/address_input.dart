import 'package:food_delivery_app/domain/failures/validation_failure.dart';

import 'package:food_delivery_app/domain/validators/validators.dart';
import 'package:formz/formz.dart';
import 'input_helper.dart';

class AddressInput extends FormzInput<String, AddressFieldValidationFailure>
    with FormzInputHelper {
  const AddressInput.pure() : super.pure("");

  AddressInput.dirty(String? value) : super.dirty(value ?? "");

  @override
  AddressFieldValidationFailure? validator(String value) {
    final failureOrNone = validateAddressField(value);
    return failureOrNone.fold(() => null, (failure) => failure);
  }
}
