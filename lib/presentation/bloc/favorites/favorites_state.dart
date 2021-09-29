part of 'favorites_cubit.dart';

class FavoritesState {
  final List<String> favorites;
  final Option<Failure> failureOrNone;

  const FavoritesState({required this.favorites, required this.failureOrNone});

  FavoritesState copyWith(
      {List<String>? favorites, Option<Failure>? failureOrNone}) {
    return FavoritesState(
      favorites: favorites ?? this.favorites,
      failureOrNone: failureOrNone ?? this.failureOrNone,
    );
  }
}
