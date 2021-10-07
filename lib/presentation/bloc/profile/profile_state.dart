part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.noProfileUserIsGuest() = NoProfileUserIsGuest;
  const factory ProfileState.profileHasNoData({required User user}) =
      ProfileHasNoData;
  const factory ProfileState.profileHasData(
      {required User user, required Profile profile}) = ProfileHasData;
  const factory ProfileState.profileError() = ProfileError;
  // const factory ProfileState(
  //     {required Option<User> user,
  //     required Option<Profile> profile,
  //     required Option<ProfileFailure> failure}) = _ProfileState;
}
