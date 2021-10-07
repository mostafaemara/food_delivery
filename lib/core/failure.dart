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
abstract class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.serverFailure() = ProfileServerFailure;
  const factory ProfileFailure.profileHasNoDataFailure() = ProfileHasNoData;
}
