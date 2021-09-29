part of 'favoritemeals_cubit.dart';

@immutable
abstract class FavoriteMealsState {}

class FavoriteMealsInit extends FavoriteMealsState {}

class FavoriteMealsLoading extends FavoriteMealsState {}

class FavoriteMealsLoaded extends FavoriteMealsState {
  final List<Meal> favMeals;

  FavoriteMealsLoaded(this.favMeals);
}

class FavoriteMealsError extends FavoriteMealsState {
  final Failure failure;

  FavoriteMealsError(this.failure);
}
