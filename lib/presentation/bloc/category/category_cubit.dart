import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/meals_repository.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final MealsRepository _mealsRepo;
  CategoryCubit(this._mealsRepo) : super(CategoryInitial());

  void getMealsByCategoryId(String id) async {
    emit(CategoryLoading());

    final failureOrMeals = await _mealsRepo.getMealsByCategory(id);
    failureOrMeals.fold((failure) => emit(CategoryFailure(failure)),
        (meals) => emit(CategoryLoaded(meals)));
  }
}
