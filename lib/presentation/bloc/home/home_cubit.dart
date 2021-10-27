import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/meals_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../injection.dart';
part "home_cubit.freezed.dart";
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final MealsRepository _mealsRepo = locator<MealsRepository>();
  HomeCubit() : super(const HomeState.initial());

  void init() async {
    emit(const HomeState.loading());
    final failureOrcategories = await _mealsRepo.getCategories();
    final failureOrMeals = await _mealsRepo.getPopularMeals();

    if (failureOrMeals.isLeft() || failureOrcategories.isLeft()) {
      emit(HomeState.failure(failure: ServerFailure()));
    } else {
      emit(HomeState.loaded(
          popularMeals: failureOrMeals.getOrElse(() => []),
          categories: failureOrcategories.getOrElse(() => [])));
    }
  }
}
