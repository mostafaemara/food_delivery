import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/validation_failure.dart';

abstract class ValidationUseCase<T, P> {
  Either<ValidationFailure, T> validate(P p);
}
