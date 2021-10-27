part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded(
      {required List<Meal> popularMeals,
      required List<MealCategory> categories}) = _Loaded;
  const factory HomeState.failure({required ServerFailure failure}) = _Failure;
}
