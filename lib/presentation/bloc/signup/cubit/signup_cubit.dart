import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';
import 'package:food_delivery_app/domain/validators.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';

import 'package:meta/meta.dart';

import '../../../../injection.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthBloc authBloc;
  final AuthRepositoryInterface _authRepo = locator<AuthRepositoryInterface>();
  SignupCubit(this.authBloc) : super(SignupState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(
        emailOrFailure: validateEmail(email), failureOrNone: none()));
  }

  void userNameChanged(String userName) {
    emit(state.copyWith(
        userNameOrFailure: validateUserName(userName), failureOrNone: none()));
  }

  String _getConfirmPasswordValue() {
    return state.confirmPasswordOrFailure.getOrElse(() => "");
  }

  void passwordChanged(String password) {
    final passwordOrFailure = validatePassword(password);
    final confirmPasswordOrfailure =
        validateConfirmPassword(password, _getConfirmPasswordValue());
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

  bool _isSignUpFieldsValid() {
    return (state.emailOrFailure.isRight() &&
        state.passwordOrFailure.isRight() &&
        state.confirmPasswordOrFailure.isRight() &&
        state.userNameOrFailure.isRight());
  }

  void signUp() async {
    if (_isSignUpFieldsValid()) {
      emit(state.copyWith(isSuccess: true, failureOrNone: none()));

      final failureOrUser = await _authRepo.signUpWithEmailAndPassword(
          state.emailOrFailure.getValueOrCrash(),
          state.passwordOrFailure.getValueOrCrash(),
          state.userNameOrFailure.getValueOrCrash());

      _handleFailureOrUser(failureOrUser);
    }
  }

  void _handleFailureOrUser(Either<AuthFailure, User> failureOrUser) {
    failureOrUser
        .fold((failure) => emit(state.copyWith(failureOrNone: some(failure))),
            (user) {
      emit(state.copyWith(isSuccess: true, failureOrNone: none()));
      authBloc.add(AuthEvent.authChanged(user: some(user)));
    });
  }
}

extension EitherHelper on Either {
  dynamic getValueOrCrash() {
    getOrElse(
        () => throw Exception(" Unexpected Value Behavior  App Should Crash!"));
  }
}
