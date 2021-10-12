import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/core/failure.dart';

import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';

import 'package:food_delivery_app/injection.dart';

import "../../../domain/validators.dart";
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthBloc authBloc;
  final AuthRepositoryInterface _authRepo = locator<AuthRepositoryInterface>();
  LoginCubit({
    required this.authBloc,
  }) : super(LoginState.intial());
  void emailChanged(String email) {
    emit(state.copyWith(
        failure: none(),
        email: validateEmail(email).fold((l) => left(l), (r) => right(email))));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
        failure: none(),
        password: validatePassword(password)
            .fold((l) => left(l), (r) => right(password))));
  }

  String _getEmailOrCrash() {
    return state.email.getOrElse(
        () => throw Exception("unexpected email behavior! App Crash"));
  }

  String _getPasswordOrCrash() {
    return state.password.getOrElse(
        () => throw Exception("unexpected password behavior! App Crash"));
  }

  void _handleFailureOrUser(Either<AuthFailure, User> failureOrUser) {
    failureOrUser.fold(
        (failure) => emit(
              state.copyWith(isSubmitting: false, failure: some(failure)),
            ), (user) {
      emit(state.copyWith(
          isSuccess: true, isSubmitting: false, failure: none()));
      authBloc.add(AuthEvent.authChanged(user: some(user)));
    });
  }

  bool _isEmailAndPasswordValid() {
    return state.email.isRight() && state.password.isRight();
  }

  void loginWithEmailAndPassword() async {
    if (_isEmailAndPasswordValid()) {
      emit(state.copyWith(isSubmitting: true));

      final failureOrUser = await _authRepo.loginWithEmailAndPassword(
          _getEmailOrCrash(), _getPasswordOrCrash());

      _handleFailureOrUser(failureOrUser);
    }
  }

  void signinWithGoogle() async {
    emit(state.copyWith(isSubmitting: true));
    final failureOrUser = await _authRepo.loginWithGoogle();
    _handleFailureOrUser(failureOrUser);
  }
}
