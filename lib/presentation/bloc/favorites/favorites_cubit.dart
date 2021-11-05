import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/favorite.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';

import 'package:food_delivery_app/domain/failures/failure.dart';

import 'package:food_delivery_app/domain/repositories/favorites_repository.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../injection.dart';

part 'favorites_state.dart';
part "favorites_cubit.freezed.dart";

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepository _favoritesRepo = locator<FavoritesRepository>();
  final AuthBloc _authBloc;
  late StreamSubscription authChange;
  FavoritesCubit(this._authBloc) : super(const FavoritesState.initial()) {
    authChange = _authBloc.stream.listen((authState) {
      authState.whenOrNull(
        authenticated: (user) async {
          emit(const FavoritesState.loading());
          final result = await _favoritesRepo.fetchFavorites(user.id);
          result.fold(
              (failure) => emit(FavoritesState.failure(failure: failure)),
              (favorites) => emit(FavoritesState.loaded(favorites: favorites)));
        },
      );
    });
  }

  void removeFavorite(String mealId) {
    _authBloc.state
        .whenOrNull(authenticated: (user) => _removeFavorite(mealId, user.id));
  }

  void toggleFavorite(Meal favorite) async {
    _authBloc.state.whenOrNull(
      authenticated: (user) async {
        state.whenOrNull(
          loaded: (favorites) {
            if (favorites.contains(favorite)) {
              _removeFavorite(favorite.id, user.id);
            } else {
              _addFavorite(favorite, user.id);
            }
          },
        );
      },
    );
  }

  void _removeFavorite(String mealId, String uid) async {
    state.whenOrNull(
      loaded: (favorites) async {
        final result = await _favoritesRepo.removeFromFavorites(mealId, uid);

        result.fold((failure) => emit(FavoritesState.failure(failure: failure)),
            (_) {
          var newFavorites = [...favorites];

          newFavorites.removeWhere((element) => element.id == mealId);

          emit(FavoritesState.loaded(favorites: newFavorites));
        });
      },
    );
  }

  void _addFavorite(Meal meal, String uid) async {
    state.whenOrNull(loaded: (favorites) async {
      final result = await _favoritesRepo.addToFavorites(meal.id, uid);
      result.fold((failure) => emit(FavoritesState.failure(failure: failure)),
          (_) {
        final newFavorites = [...favorites, meal];
        emit(FavoritesState.loaded(favorites: newFavorites));
      });
    });
  }

  void dispose() {
    authChange.cancel();
  }
}
