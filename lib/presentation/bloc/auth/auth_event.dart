part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class AuthChanged extends AuthEvent {
  final Option<User> user;

  const AuthChanged(this.user);
}

class AuthCheck extends AuthEvent {}

class SignOutRequest extends AuthEvent {}
