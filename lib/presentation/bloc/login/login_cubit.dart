import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/auth_repository.dart';

import 'package:food_delivery_app/injection.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/inputs/email_input.dart';
import 'package:food_delivery_app/presentation/inputs/password_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../submission_state.dart';

part 'login_state.dart';
part "login_cubit.freezed.dart";

class LoginCubit extends Cubit<LoginState> {
  final AuthBloc authBloc;

  final AuthRepository _authRepo = locator<AuthRepository>();
  LoginCubit({
    required this.authBloc,
  }) : super(LoginState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(emailInput: EmailInput.dirty(email)));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(passwordInput: PasswordInput.dirty(password)));
  }

  void _handleFailureOrUser(Either<AuthFailure, User> failureOrUser) {
    failureOrUser.fold(
        (failure) => emit(state.copyWith(
            submissionState: SubmissionState.failed(failure: failure))),
        (user) {
      emit(state.copyWith(submissionState: const SubmissionState.success()));
      authBloc.add(AuthEvent.authChanged(user: some(user)));
    });
  }

  bool _isFormValid() {
    return (state.emailInput.valid && state.passwordInput.valid);
  }

  void loginWithEmailAndPassword() async {
    if (_isFormValid()) {
      emit(state.copyWith(submissionState: const SubmissionState.submitting()));

      final failureOrUser = await _authRepo.loginWithEmailAndPassword(
          state.emailInput.value, state.passwordInput.value);

      _handleFailureOrUser(failureOrUser);
    }
  }

  void signinWithGoogle() async {
    emit(state.copyWith(submissionState: const SubmissionState.submitting()));
    final failureOrUser = await _authRepo.loginWithGoogle();
    _handleFailureOrUser(failureOrUser);
  }
}
