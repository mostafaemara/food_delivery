import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/features/auth/domain/entities/value_failure.dart';

abstract class InputValue<T> {
  Either<ValueFailure, Unit> validate(T value);
}
