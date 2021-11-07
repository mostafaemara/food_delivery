import 'package:bloc/bloc.dart';

import 'package:food_delivery_app/domain/entities/meal.dart';

import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/meals_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.dart';
part "category_cubit.freezed.dart";

class CategoryCubit extends Cubit<CategoryState> {
  final MealsRepository _mealsRepo;
  final String categoryId;
  CategoryCubit(this._mealsRepo, {required this.categoryId})
      : super(const CategoryState.initial());

  void getMealsByCategoryId() async {
    emit(const CategoryState.loading());

    final failureOrMeals = await _mealsRepo.getMealsByCategory(categoryId);
    failureOrMeals.fold(
        (failure) => emit(CategoryState.failure(failure: failure)),
        (meals) => emit(CategoryState.loaded(meals: meals)));
  }
}
