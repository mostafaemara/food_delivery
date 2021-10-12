import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/application/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/application/form_inputs.dart';
import 'package:food_delivery_app/core/failure.dart';

import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';

import 'package:food_delivery_app/injection.dart';
import 'package:formz/formz.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthBloc authBloc;
  final AuthRepositoryInterface _authRepo = locator<AuthRepositoryInterface>();
  LoginCubit({
    required this.authBloc,
  }) : super(LoginState.intial());

  void emailChanged(String email) {
    emit(state.copyWith(
      email: EmailInput.dirty(email),
      failure: none(),
    ));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
        failure: none(), password: PasswordInput.dirty(password)));
  }

  void _handleFailureOrUser(Either<AuthFailure, User> failureOrUser) {
    failureOrUser.fold(
        (failure) => emit(
              state.copyWith(
                  status: FormzStatus.submissionFailure,
                  failure: some(failure)),
            ), (user) {
      emit(state.copyWith(
          status: FormzStatus.submissionSuccess, failure: none()));
      authBloc.add(AuthEvent.authChanged(user: some(user)));
    });
  }

  void _validateFields() {
    state.copyWith(status: Formz.validate([state.email, state.password]));
  }

  void loginWithEmailAndPassword() async {
    _validateFields();
    if (state.status.isValid) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));

      final failureOrUser = await _authRepo.loginWithEmailAndPassword(
          state.email.value, state.password.value);

      _handleFailureOrUser(failureOrUser);
    }
  }

  void signinWithGoogle() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    final failureOrUser = await _authRepo.loginWithGoogle();
    _handleFailureOrUser(failureOrUser);
  }
}
