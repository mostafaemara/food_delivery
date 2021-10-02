part of 'favorites_cubit.dart';

enum FavoritesStatus { init, loading, loaded, notAuth, error }

class FavoritesState {
  final List<Favorite> favorites;
  final Option<Failure> failureOrNone;
  final FavoritesStatus status;
  final Option<User> user;
  const FavoritesState(
      {required this.user,
      required this.status,
      required this.favorites,
      required this.failureOrNone});

  FavoritesState copyWith(
      {Option<User>? user,
      FavoritesStatus? status,
      List<Favorite>? favorites,
      Option<Failure>? failureOrNone}) {
    return FavoritesState(
      status: status ?? this.status,
      favorites: favorites ?? this.favorites,
      failureOrNone: failureOrNone ?? this.failureOrNone,
      user: user ?? this.user,
    );
  }

  // @override
  //List<Object> get props => [favorites, status, user, failureOrNone];
}
