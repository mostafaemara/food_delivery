import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/core/usecase.dart';
import 'package:food_delivery_app/features/auth/domain/entities/input_value.dart';
import 'package:food_delivery_app/features/auth/domain/entities/value_failure.dart';
import 'package:validators/validators.dart';

class ValidateEmail implements InputValue<String> {
  final String confirmValue;

  ValidateEmail(this.confirmValue);
  @override
  Either<ValueFailure, Unit> validate(value) {
    if (value.isEmpty) {
      return left(Empty());
    } else if (!isEmail(value)) {
      return left(InvalidEmail());
    } else {
      return right(unit);
    }
  }
}
