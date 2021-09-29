import 'package:bloc/bloc.dart';

import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/repositories/meals_repository.dart';
import 'package:meta/meta.dart';

part 'favoritemeals_state.dart';

class FavoritemealsCubit extends Cubit<FavoriteMealsState> {
  FavoritemealsCubit(this._mealsRepo) : super(FavoriteMealsInit());

  final MealsRepositoryInterface _mealsRepo;
  void init(List<String> ids) async {
    emit(FavoriteMealsLoading());
    final result = await _mealsRepo.getMealsByIds(ids);

    result.fold((failure) => emit(FavoriteMealsError(failure)),
        (meals) => emit(FavoriteMealsLoaded(meals)));
  }
}
