import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverFailure() = AuthServerFailure;
  const factory AuthFailure.worngEmailOrPassword() = WorngEmailOrPassword;
  const factory AuthFailure.processAborted() = ProcessAborted;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
}

@freezed
abstract class AddressFailure with _$AddressFailure {
  const factory AddressFailure.serverFailiure() = AddressServerFailure;
  const factory AddressFailure.noAddressSelected() = AddressesIsEmpty;
}

class PaymentFailure {}

class ServerFailure {}
