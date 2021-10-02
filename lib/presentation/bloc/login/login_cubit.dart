import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/core/params/auth_params.dart';
import 'package:food_delivery_app/core/usecase.dart';
import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/domain/usecases/login_with_email.dart';
import 'package:food_delivery_app/domain/usecases/login_with_google.dart';
import 'package:food_delivery_app/domain/usecases/validate_email.dart';
import 'package:food_delivery_app/domain/usecases/validate_password.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthBloc authBloc;
  final LoginWithEmail loginWithEmail;
  final LoginWithGoogle loginWithGoogle;
  final ValidateEmail validateEmail;
  final ValidatePassword validatePassword;

  LoginCubit(
      {required this.authBloc,
      required this.loginWithEmail,
      required this.loginWithGoogle,
      required this.validateEmail,
      required this.validatePassword})
      : super(LoginState(
            status: LoginStatus.idle,
            email: right(""),
            password: right(""),
            failure: none()));
  void emailChanged(String email) {
    emit(state.copyWith(
        failure: none(),
        status: LoginStatus.idle,
        email: validateEmail
            .validate(email)
            .fold((l) => left(l), (r) => right(email))));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
        status: LoginStatus.idle,
        failure: none(),
        password: validatePassword
            .validate(password)
            .fold((l) => left(l), (r) => right(password))));
  }

  void login() async {
    if (state.email.isRight() && state.password.isRight()) {
      emit(state.copyWith(status: LoginStatus.submitting));
      final response = await loginWithEmail.call(AuthParams(
          email: state.email.fold((l) => "", (r) => r),
          password: state.password.fold((l) => "", (r) => r)));
      response.fold(
          (f) =>
              emit(state.copyWith(status: LoginStatus.error, failure: some(f))),
          (user) {
        emit(state.copyWith(status: LoginStatus.success, failure: none()));
        authBloc.add(AuthChanged(some(user)));
      });
    }
  }

  void signinWithGoogle() async {
    emit(state.copyWith(status: LoginStatus.submitting));
    final failureOrSuccess = await loginWithGoogle.call(NoParams());
    failureOrSuccess.fold(
        (f) =>
            emit(state.copyWith(status: LoginStatus.error, failure: some(f))),
        (user) {
      emit(state.copyWith(status: LoginStatus.success, failure: none()));
      authBloc.add(AuthChanged(some(user)));
    });
  }
}
