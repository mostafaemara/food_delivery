import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositoryInterface authRepo;

  AuthBloc(this.authRepo) : super(const AuthState.initial()) {
    //authRepo.onAuthChanged.listen((user) {
    //  print(" Auth bloc Auth changed");
    //  add(AuthChanged(user));
    //   });
  }
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authChanged: (authChanged) async* {
        yield authChanged.user.fold(() => const AuthState.unAuthenticated(),
            (user) => AuthState.authenticated(user: user));
      },
      checkAuth: (_) async* {
        final user = await authRepo.getUser();

        yield user.fold(() => const AuthState.unAuthenticated(),
            (user) => AuthState.authenticated(user: user));
      },
      signOut: (_) async* {
        await authRepo.signOut();
        yield const AuthState.unAuthenticated();
      },
    );
  }
}
