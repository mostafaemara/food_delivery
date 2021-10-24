import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/meals_repository.dart';
import 'package:meta/meta.dart';

import '../../../injection.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final MealsRepository _mealsRepo = locator<MealsRepository>();
  HomeCubit()
      : super(HomeState(
            failure: none(),
            popularMeals: const [],
            categories: const [],
            status: HomeStatus.idle));

  void init() async {
    emit(state.copyWith(status: HomeStatus.loading));
    final failureOrcategories = await _mealsRepo.getCategories();
    final failureOrMeals = await _mealsRepo.getPopularMeals();
    if (failureOrMeals.isLeft() || failureOrcategories.isLeft()) {
      emit(state.copyWith(
          failure: failureOrMeals.fold((l) => some(l), (r) => none()),
          status: HomeStatus.error));
    } else {
      emit(state.copyWith(
          status: HomeStatus.loaded,
          categories: failureOrcategories.getOrElse(() => []),
          popularMeals: failureOrMeals.getOrElse(() => [])));
    }
  }
}
