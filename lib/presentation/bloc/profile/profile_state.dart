part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {required Option<User> user,
      required Option<Profile> profile,
      required Option<ProfileFailure> failure}) = _ProfileState;
}
