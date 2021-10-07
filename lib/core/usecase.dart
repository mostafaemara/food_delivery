import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/core/failure.dart';

abstract class UseCase<T, P> {
  Future<Either<AuthFailure, T>> call(P p);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
