part of 'filter_cubit.dart';

sealed class FilterState extends Equatable {
  const FilterState();

  @override
  List<Object> get props => [];
}

final class FilterInitial extends FilterState {}

//==================================================
final class FilterMealNameLoaded extends FilterState {
  final List<MealsModel> mealsByNameList;

  const FilterMealNameLoaded({required this.mealsByNameList});
}

final class FilterMealNameError extends FilterState {
  final String errorMessage;

  const FilterMealNameError({
    required this.errorMessage,
  });
}

final class FilterMealNameLoading extends FilterState {}

final class FilterMealNameEmpty extends FilterState {}

//=========================================================

final class FilterMealCategoryLoaded extends FilterState {}

final class FilterMealCategoryError extends FilterState {
  final String errorMessage;

  const FilterMealCategoryError({required this.errorMessage});
}

final class FilterMealCategoryLoading extends FilterState {}

final class FilterMealCategoryEmpty extends FilterState {}

//=============================================================

final class FilterMealIngredientLoaded extends FilterState {
  final List<MealsModel> mealsByNameList;

  const FilterMealIngredientLoaded({required this.mealsByNameList});
}

final class FilterMealIngredientError extends FilterState {
  final String errorMessage;

  const FilterMealIngredientError({required this.errorMessage});
}

final class FilterMealIngredientLoading extends FilterState {}

final class FilterMealIngredientEmpty extends FilterState {}
