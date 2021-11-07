part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded({required List<Meal> meals}) = _Loaded;
  const factory CategoryState.failure({required ServerFailure failure}) =
      _Failure;
}
