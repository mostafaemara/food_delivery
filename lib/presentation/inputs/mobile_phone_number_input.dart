import 'package:food_delivery_app/domain/failures/validation_failure.dart';
import 'package:food_delivery_app/domain/validators/validators.dart';
import 'package:formz/formz.dart';
import 'input_helper.dart';

class MobilePhoneNumberInput
    extends FormzInput<String, MobilePhoneNumberValidationFailure>
    with FormzInputHelper {
  const MobilePhoneNumberInput.pure() : super.pure("");

  MobilePhoneNumberInput.dirty(String? value) : super.dirty(value ?? "");

  @override
  MobilePhoneNumberValidationFailure? validator(String value) {
    final failureOrNone = validateMobilePhoneNumber(value);
    return failureOrNone.fold(() => null, (failure) => failure);
  }
}
