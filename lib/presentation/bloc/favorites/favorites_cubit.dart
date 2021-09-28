import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/repositories/favorites_repository.dart';
import 'package:meta/meta.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepositoryInterface _favoritesRepo;
  FavoritesCubit(this._favoritesRepo)
      : super(FavoritesState(favorites: [], failureOrNone: none()));

  void init(String uid) async {
    final result = await _favoritesRepo.fetchFavorites(uid);

    result.fold(
        (failure) => emit(state.copyWith(failureOrNone: some(failure))),
        (favorites) =>
            emit(state.copyWith(favorites: favorites, failureOrNone: none())));
  }

  void toggleFavorite(String mealId, String uid) async {
    if (state.favorites.contains(mealId)) {
      final result = await _favoritesRepo.removeFromFavorites(mealId, uid);

      result.fold(
          (failure) => emit(state.copyWith(failureOrNone: some(failure))), (r) {
        var favorites = state.favorites;

        favorites.removeWhere((element) => element == mealId);

        emit(state.copyWith(favorites: favorites, failureOrNone: none()));
      });
    } else {
      final result = await _favoritesRepo.addToFavorites(mealId, uid);
      result.fold(
          (failure) => emit(state.copyWith(failureOrNone: some(failure))), (r) {
        final favorites = [...state.favorites, mealId];
        emit(state.copyWith(favorites: favorites, failureOrNone: none()));
      });
    }
  }
}
