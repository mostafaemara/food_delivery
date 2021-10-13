import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/application/bloc/auth/auth_bloc.dart';

import 'package:food_delivery_app/domain/entities/profile.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/profile_repository_interface.dart';
import 'package:food_delivery_app/injection.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part "profile_cubit.freezed.dart";

class ProfileCubit extends Cubit<ProfileState> {
  final AuthBloc _authBloc;
  final _profileRepo = locator<ProfileRepositoryInterface>();
  late StreamSubscription _auth;
  ProfileCubit(this._authBloc)
      : super(const ProfileState.noProfileUserIsGuest()) {
    _auth = _authBloc.stream.listen((authState) {
      authState.maybeWhen(
        authenticated: (user) async {
          final result = await _profileRepo.getProfile(uid: user.id);
          result.fold((failure) {
            failure.when(
              serverFailure: () => emit(const ProfileState.profileError()),
              profileHasNoDataFailure: () =>
                  emit(ProfileState.profileHasNoData(user: user)),
            );
          }, (profile) {
            emit(ProfileState.profileHasData(user: user, profile: profile));
          });
        },
        orElse: () {
          emit(const ProfileState.noProfileUserIsGuest());
        },
      );
    });
  }

  void profileChanged(Profile profile) {
    _authBloc.state.maybeWhen(
      authenticated: (user) {
        emit(ProfileState.profileHasData(user: user, profile: profile));
      },
      orElse: () => null,
    );
  }

  void dispose() {
    _auth.cancel();
  }
}
