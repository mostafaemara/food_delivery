import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'package:food_delivery_app/application/bloc/auth/auth_bloc.dart';

import 'package:food_delivery_app/core/failure.dart';

import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';

import 'package:food_delivery_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part "login_cubit.freezed.dart";

class LoginCubit extends Cubit<LoginState> {
  final AuthBloc authBloc;

  final AuthRepositoryInterface _authRepo = locator<AuthRepositoryInterface>();
  LoginCubit({
    required this.authBloc,
  }) : super(const LoginState.idle());

  void _handleFailureOrUser(Either<AuthFailure, User> failureOrUser) {
    failureOrUser.fold((failure) => emit(LoginState.error(failure: failure)),
        (user) {
      emit(const LoginState.success());
      authBloc.add(AuthEvent.authChanged(user: some(user)));
    });
  }

  void loginWithEmailAndPassword(String email, String password) async {
    emit(const LoginState.submitting());

    final failureOrUser =
        await _authRepo.loginWithEmailAndPassword(email, password);

    _handleFailureOrUser(failureOrUser);
  }

  void signinWithGoogle() async {
    // emit(state.copyWith(status: LoginStatus.submitting));
    //  final failureOrUser = await _authRepo.loginWithGoogle();
    //   _handleFailureOrUser(failureOrUser);
  }
}
