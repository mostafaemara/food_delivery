import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/auth_repository.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/submission_state.dart';
import 'package:food_delivery_app/presentation/inputs/confirm_password_input.dart';
import 'package:food_delivery_app/presentation/inputs/email_input.dart';
import 'package:food_delivery_app/presentation/inputs/password_input.dart';
import 'package:food_delivery_app/presentation/inputs/username_input.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../injection.dart';

part 'signup_state.dart';
part "signup_cubit.freezed.dart";

class SignupCubit extends Cubit<SignupState> {
  final AuthBloc authBloc;
  final AuthRepository _authRepo = locator<AuthRepository>();
  SignupCubit(this.authBloc) : super(SignupState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(
      emailInput: EmailInput.dirty(email),
    ));
  }

  void userNameChanged(String userName) {
    emit(state.copyWith(
      userNameInput: UserNameInput.dirty(userName),
    ));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
        passwordInput: PasswordInput.dirty(password),
        confirmPasswordInput: ConfirmPasswordInput.dirty(
            confirmPassword: state.confirmPasswordInput.value,
            password: password)));
  }

  void confirmPasswordChanged(String confirmPassword) {
    emit(state.copyWith(
        confirmPasswordInput: ConfirmPasswordInput.dirty(
            confirmPassword: confirmPassword,
            password: state.passwordInput.value)));
  }

  bool _isFormFieldsValid() {
    return (state.emailInput.valid &&
        state.userNameInput.valid &&
        state.confirmPasswordInput.valid &&
        state.passwordInput.valid);
  }

  void signUp() async {
    if (_isFormFieldsValid()) {
      emit(state.copyWith(submissionState: const SubmissionState.submitting()));

      final failureOrUser = await _authRepo.signUpWithEmailAndPassword(
          state.emailInput.value,
          state.passwordInput.value,
          state.userNameInput.value);

      _handleSignUpResponse(failureOrUser);
    }
  }

  void _handleSignUpResponse(Either<AuthFailure, User> failureOrUser) {
    failureOrUser.fold(
        (failure) => emit(
              state.copyWith(
                  submissionState: SubmissionState.failed(failure: failure)),
            ), (user) {
      emit(state.copyWith(submissionState: const SubmissionState.success()));
      authBloc.add(AuthEvent.authChanged(user: some(user)));
    });
  }
}
