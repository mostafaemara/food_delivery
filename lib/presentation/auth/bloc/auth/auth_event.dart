part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class AuthChanged extends AuthEvent {
  final Option<User> user;

  const AuthChanged(this.user);
  @override
  List<Object?> get props => [user];
}

class SignOutRequest extends AuthEvent {
  @override
  List<Object?> get props => [];
}
