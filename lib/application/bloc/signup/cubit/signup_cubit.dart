import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/application/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/application/form_inputs/auth_inputs.dart';
import 'package:food_delivery_app/core/failure.dart';

import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';

import 'package:formz/formz.dart';

import 'package:meta/meta.dart';

import '../../../../injection.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthBloc authBloc;
  final AuthRepositoryInterface _authRepo = locator<AuthRepositoryInterface>();
  SignupCubit(this.authBloc) : super(SignupState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(email: EmailInput.dirty(email), failureOrNone: none()));
  }

  void userNameChanged(String userName) {
    emit(state.copyWith(
        userName: UserNameInput.dirty(userName), failureOrNone: none()));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
        password: PasswordInput.dirty(password), failureOrNone: none()));
  }

  void confirmPasswordChanged(String confirmPassword) {
    emit(state.copyWith(
        confirmPassword: ConfirmPasswordInput.dirty(
            confirmPassword: confirmPassword, password: state.password.value),
        failureOrNone: none()));
  }

  bool _isFormFieldsValid() {
    final validationState = Formz.validate(
        [state.email, state.userName, state.password, state.confirmPassword]);
    return validationState.isValid;
  }

  void signUp() async {
    if (_isFormFieldsValid()) {
      emit(state.copyWith(
          formStatus: FormzStatus.submissionInProgress, failureOrNone: none()));

      final failureOrUser = await _authRepo.signUpWithEmailAndPassword(
          state.email.value, state.password.value, state.userName.value);

      _handleSignUpResponse(failureOrUser);
    }
  }

  void _handleSignUpResponse(Either<AuthFailure, User> failureOrUser) {
    failureOrUser.fold(
        (failure) => emit(
              state.copyWith(
                  failureOrNone: some(failure),
                  formStatus: FormzStatus.submissionFailure),
            ), (user) {
      emit(state.copyWith(
          formStatus: FormzStatus.submissionSuccess, failureOrNone: none()));
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
