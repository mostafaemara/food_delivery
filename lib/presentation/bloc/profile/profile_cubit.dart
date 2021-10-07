import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/profile.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/profile_repository_interface.dart';
import 'package:food_delivery_app/injection.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part "profile_cubit.freezed.dart";

class ProfileCubit extends Cubit<ProfileState> {
  final AuthBloc _authBloc;
  final _profileRepo = locator<ProfileRepositoryInterface>();
  late StreamSubscription _auth;
  ProfileCubit(this._authBloc)
      : super(ProfileState(user: none(), profile: none(), failure: none())) {
    _auth = _authBloc.stream.listen((authState) {
      authState.maybeWhen(
        authenticated: (user) async {
          emit(state.copyWith(user: some(user)));
          final result = await _profileRepo.getProfile(uid: user.id);
          result.fold((failure) {
            failure.when(
              serverFailure: () =>
                  emit(state.copyWith(profile: none(), failure: some(failure))),
              profileHasNoDataFailure: () =>
                  emit(state.copyWith(profile: none(), failure: none())),
            );
          }, (profile) {
            emit(state.copyWith(profile: some(profile), failure: none()));
          });
        },
        orElse: () {
          emit(state.copyWith(user: none(), profile: none(), failure: none()));
        },
      );
    });
  }

  void profileChanged(Profile profile) {
    emit(state.copyWith(profile: some(profile)));
  }

  void dispose() {
    _auth.cancel();
  }
}
