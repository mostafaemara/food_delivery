import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/application/bloc/profile/profile_cubit.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/domain/entities/profile.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/profile_repository_interface.dart';
import 'package:food_delivery_app/injection.dart';

import 'package:meta/meta.dart';
import "../../../domain/validators.dart";
part 'edite_profile_state.dart';

class EditeProfileCubit extends Cubit<EditeProfileState> {
  final _profileRepo = locator<ProfileRepositoryInterface>();
  final ProfileCubit _profileBloc;
  EditeProfileCubit(
    this._profileBloc,
  ) : super(_profileBloc.state.maybeWhen(
          profileHasData: (user, profile) => EditeProfileState(
              failure: none(),
              isSubmiting: false,
              isSuccess: false,
              phoneNumberOrfailure: right(profile.phoneNumber),
              usernameOrfailure: right(profile.userName)),
          orElse: () => EditeProfileState(
              isSuccess: false,
              usernameOrfailure: right(""),
              phoneNumberOrfailure: right(""),
              failure: none(),
              isSubmiting: false),
        ));

  void phoneNumberChanged(String phoneNumber) {
    emit(state.copyWith(
      phoneNumberOrfailure: validatephoneNumber(phoneNumber),
      failure: none(),
    ));
  }

  void userNameChanged(String userName) {
    emit(state.copyWith(
      //   usernameOrfailure: validateUserName(userName),
      failure: none(),
    ));
  }

  void _submit(User user) async {
    final isValid = state.phoneNumberOrfailure.isRight() &&
        state.phoneNumberOrfailure.isRight();
    if (isValid) {
      emit(state.copyWith(failure: none(), isSubmiting: true));
      final phoneNumberString = state.phoneNumberOrfailure.fold((l) {
        throw Exception("This is a crash!");
      }, (r) => r);
      final userNameString = state.usernameOrfailure.fold((l) {
        throw Exception("This is a crash!");
      }, (r) => r);
      final profile =
          Profile(userName: userNameString, phoneNumber: phoneNumberString);
      final result =
          await _profileRepo.updateProfile(profile: profile, uid: user.id);
      result.fold((failure) {
        log("Error" + failure.toString());
        emit(state.copyWith(
          failure: some(failure),
          isSubmiting: false,
        ));
      }, (_) {
        emit(state.copyWith(
            failure: none(), isSubmiting: false, isSuccess: true));
        _profileBloc.profileChanged(profile);
      });
    }
  }

  void submitEdite() {
    _profileBloc.state.whenOrNull(
      profileHasData: (user, profile) {
        _submit(user);
      },
      profileHasNoData: (user) {
        _submit(user);
      },
    );
  }
}
