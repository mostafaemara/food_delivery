part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.loading() = _Loading;
  const factory FavoritesState.loaded({required List<Meal> favorites}) =
      _Loaded;

  const factory FavoritesState.failure({required ServerFailure failure}) =
      _Failure;

  // @override
  //List<Object> get props => [favorites, status, user, failureOrNone];
}
