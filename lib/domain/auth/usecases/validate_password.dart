import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/core/validation_usecase.dart';

class ValidatePassword implements ValidationUseCase<Unit, String> {
  @override
  Either<ValidationFailure, Unit> validate(p) {
    if (p.isEmpty) {
      return left(Empty());
    }
    if (p.length <= 6) {
      return left(ShortPassword());
    }
    return right(unit);
  }
}
