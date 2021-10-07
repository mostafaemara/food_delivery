part of 'favorites_cubit.dart';

enum FavoritesStatus { init, loading, loaded, notAuth, error }

class FavoritesState {
  final List<Favorite> favorites;
  final Option<AuthFailure> failureOrNone;
  final FavoritesStatus status;

  const FavoritesState(
      {required this.status,
      required this.favorites,
      required this.failureOrNone});

  FavoritesState copyWith(
      {Option<User>? user,
      FavoritesStatus? status,
      List<Favorite>? favorites,
      Option<AuthFailure>? failureOrNone}) {
    return FavoritesState(
      status: status ?? this.status,
      favorites: favorites ?? this.favorites,
      failureOrNone: failureOrNone ?? this.failureOrNone,
    );
  }

  // @override
  //List<Object> get props => [favorites, status, user, failureOrNone];
}
