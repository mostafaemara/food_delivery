import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/core/validation_usecase.dart';
import 'package:validators/validators.dart';

class ValidateEmail implements ValidationUseCase<Unit, String> {
  @override
  Either<ValidationFailure, Unit> validate(p) {
    if (p.isEmpty) {
      return left(Empty());
    }
    if (!isEmail(p)) {
      return left(InvalidEmail());
    }
    return right(unit);
  }
}
