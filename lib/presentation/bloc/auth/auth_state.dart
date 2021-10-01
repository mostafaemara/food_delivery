part of 'auth_bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class Authenticated extends AuthState {
  final User user;

  Authenticated(this.user);
}

class UnAuthenticated extends AuthState {}
