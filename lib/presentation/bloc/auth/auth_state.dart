part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({required User user}) = Authenticated;
  const factory AuthState.unAuthenticated() = UnAuthenticated;
}
