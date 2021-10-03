part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authChanged({required Option<User> user}) =
      AuthChanged;
  const factory AuthEvent.checkAuth() = CheckAuth;
  const factory AuthEvent.signOut() = SignOut;
}
