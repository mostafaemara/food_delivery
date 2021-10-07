part of 'home_cubit.dart';

enum HomeStatus { idle, loading, loaded, error }

@immutable
class HomeState {
  final Option<AuthFailure> failure;
  final List<Meal> popularMeals;
  final List<MealCategory> categories;
  final HomeStatus status;

  const HomeState(
      {required this.failure,
      required this.popularMeals,
      required this.categories,
      required this.status});

  HomeState copyWith(
      {Option<AuthFailure>? failure,
      List<Meal>? popularMeals,
      List<MealCategory>? categories,
      HomeStatus? status}) {
    return HomeState(
        failure: failure ?? this.failure,
        popularMeals: popularMeals ?? this.popularMeals,
        categories: categories ?? this.categories,
        status: status ?? this.status);
  }

  //@override
  // List<Object?> get props => [failure, popularMeals, categories, status];
}
