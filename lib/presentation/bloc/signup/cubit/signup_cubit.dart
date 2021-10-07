import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';
import 'package:food_delivery_app/domain/validators.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';

import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthBloc authBloc;
  final AuthRepositoryInterface _authRepo;
  SignupCubit(this._authRepo, this.authBloc)
      : super(SignupState(
            userNameOrFailure: right(""),
            status: SignupStatus.idle,
            failureOrNone: none(),
            emailOrFailure: right(""),
            passwordOrFailure: right(""),
            confirmPasswordOrFailure: right("")));

  void emailChanged(String email) {
    emit(state.copyWith(
        emailOrFailure: validateEmail(email), failureOrNone: none()));
  }

  void userNameChanged(String userName) {
    emit(state.copyWith(
        userNameOrFailure: validateUserName(userName), failureOrNone: none()));
  }

  void passwordChanged(String password) {
    final passwordOrFailure = validatePassword(password);
    final confirmPasswordOrfailure = validateConfirmPassword(
        password, state.confirmPasswordOrFailure.fold((l) => "", (r) => r));
    emit(state.copyWith(
        passwordOrFailure: passwordOrFailure,
        confirmPasswordOrFailure: confirmPasswordOrfailure,
        failureOrNone: none()));
  }

  void confirmePasswordChanged(String confirmPassword) {
    final confirmPasswordOrfailure = validateConfirmPassword(
        state.passwordOrFailure.fold((l) => "", (r) => r), confirmPassword);
    emit(state.copyWith(
        confirmPasswordOrFailure: confirmPasswordOrfailure,
        failureOrNone: none()));
  }

  void signUp() async {
    final isValid = state.emailOrFailure.isRight() &&
        state.passwordOrFailure.isRight() &&
        state.confirmPasswordOrFailure.isRight() &&
        state.userNameOrFailure.isRight();
    if (isValid) {
      emit(state.copyWith(
          status: SignupStatus.submitting, failureOrNone: none()));
      final email = state.emailOrFailure.getOrElse(() {
        throw Exception("App Should Crash!");
      });
      final password = state.passwordOrFailure.getOrElse(() {
        throw Exception("App Should Crash!");
      });
      final userName = state.userNameOrFailure.getOrElse(() {
        throw Exception("App Should Crash!");
      });
      final succesOrFailure =
          await _authRepo.signUpWithEmailAndPassword(email, password, userName);
      succesOrFailure.fold(
          (l) => emit(state.copyWith(
              status: SignupStatus.error, failureOrNone: some(l))), (user) {
        emit(state.copyWith(
            status: SignupStatus.success, failureOrNone: none()));
        authBloc.add(AuthEvent.authChanged(user: some(user)));
      });
    }
  }
}
