import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositoryInterface authRepo;

  AuthBloc(this.authRepo) : super(AuthInitial()) {
    //authRepo.onAuthChanged.listen((user) {
    //  print(" Auth bloc Auth changed");
    //  add(AuthChanged(user));
    //   });
  }
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthChanged) {
      yield event.user
          .fold(() => UnAuthenticated(), (user) => Authenticated(user));
    }
    if (event is AuthCheck) {
      final user = await authRepo.getUser();

      yield user.fold(() => UnAuthenticated(), (user) => Authenticated(user));
    }
    if (event is SignOutRequest) {
      await authRepo.signOut();
      yield UnAuthenticated();
    }
  }
}
