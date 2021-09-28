part of 'category_cubit.dart';

@immutable
abstract class CategoryState extends Equatable {}

class CategoryInitial extends CategoryState {
  @override
  List<Object?> get props => [];
}

class CategoryLoading extends CategoryState {
  @override
  List<Object?> get props => [];
}

class CategoryLoaded extends CategoryState {
  final List<Meal> meals;

  CategoryLoaded(this.meals);
  @override
  List<Object?> get props => [meals];
}

class CategoryFailure extends CategoryState {
  final Failure failure;

  CategoryFailure(this.failure);
  @override
  List<Object?> get props => [failure];
}
