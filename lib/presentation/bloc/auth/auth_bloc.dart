import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositoryInterface authRepo;

  AuthBloc(this.authRepo) : super(AuthInitial()) {
    authRepo.onAuthChanged.listen((user) {
      add(AuthChanged(user));
    });
  }
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthChanged) {
      yield event.user
          .fold(() => UnAuthenticated(), (user) => Authenticated(user));
    }
    if (event is SignOutRequest) {
      await authRepo.signOut();
    }
  }
}
