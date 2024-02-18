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

final class SearchByFirstLitterLoaded extends FilterState {
  final List<MealsModel> mealsByFirstLitterList;

  const SearchByFirstLitterLoaded({required this.mealsByFirstLitterList});
}

final class FilterLoading extends FilterState {}

final class FilterEmpty extends FilterState {}

//=========================================================

final class FilterMealCategoryLoaded extends FilterState {
  final List<MealsModel> mealsByCategry;

  const FilterMealCategoryLoaded({required this.mealsByCategry});
}

//=============================================================

final class FilterMealIngredientLoaded extends FilterState {
  final List<MealsModel> mealsByIngredientList;

  const FilterMealIngredientLoaded({required this.mealsByIngredientList});
}


//==============================================
