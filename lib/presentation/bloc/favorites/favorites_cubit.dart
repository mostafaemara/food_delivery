import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/favorite.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';
import 'package:food_delivery_app/domain/repositories/favorites_repository.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepositoryInterface _favoritesRepo;
  final AuthBloc _authBloc;
  late StreamSubscription subscription;
  FavoritesCubit(this._favoritesRepo, this._authBloc)
      : super(FavoritesState(
            favorites: [],
            failureOrNone: none(),
            status: FavoritesStatus.init,
            user: none())) {
    subscription = _authBloc.stream.listen((authState) async {
      if (authState is Authenticated) {
        emit(state.copyWith(
          status: FavoritesStatus.loading,
          user: some(authState.user),
        ));
        final result = await _favoritesRepo.fetchFavorites(authState.user.id);
        result.fold(
            (failure) => emit(state.copyWith(
                failureOrNone: some(failure), status: FavoritesStatus.error)),
            (favorites) => emit(state.copyWith(
                favorites: favorites,
                failureOrNone: none(),
                status: FavoritesStatus.loaded)));
      } else {
        emit(state.copyWith(
            failureOrNone: none(),
            favorites: [],
            status: FavoritesStatus.notAuth,
            user: none()));
      }
    });
  }

  void init() async {
    state.user.fold(() => null, (user) async {
      emit(state.copyWith(status: FavoritesStatus.loading));
      final result = await _favoritesRepo.fetchFavorites(user.id);
      result.fold(
          (failure) => emit(state.copyWith(
              failureOrNone: some(failure), status: FavoritesStatus.error)),
          (favorites) => emit(state.copyWith(
              favorites: favorites,
              failureOrNone: none(),
              status: FavoritesStatus.loaded)));
    });
  }

  void toggleFavorite(Favorite favorite) async {
    state.user.fold(() => {}, (user) async {
      if (state.favorites.contains(favorite)) {
        final result =
            await _favoritesRepo.removeFromFavorites(favorite.mealId, user.id);

        result.fold(
            (failure) => emit(state.copyWith(failureOrNone: some(failure))),
            (r) {
          var favorites = state.favorites;

          favorites.removeWhere((element) => element == favorite);

          emit(state.copyWith(favorites: favorites, failureOrNone: none()));
        });
      } else {
        final result =
            await _favoritesRepo.addToFavorites(favorite.mealId, user.id);
        result.fold(
            (failure) => emit(state.copyWith(failureOrNone: some(failure))),
            (r) {
          final favorites = [...state.favorites, favorite];
          emit(state.copyWith(favorites: favorites, failureOrNone: none()));
        });
      }
    });
  }
}
