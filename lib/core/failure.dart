import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {}

class WorngEmailOrPasswordFailure extends Failure {}

class ProcessAbortedFailure extends Failure {}

class EmailAlreadyInUserFailure extends Failure {}
