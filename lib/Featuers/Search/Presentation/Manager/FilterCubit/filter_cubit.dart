import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/Search/Data/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  final SearchRepo searchRepo;
  FilterCubit(this.searchRepo) : super(FilterInitial());
  Future getMealsByNameList(String mealName) async {
    emit(FilterLoading());

    var result = await searchRepo.getMealsByName(mealName);
    result.fold((failure) => emit(FilterEmpty()), (mealsByNameList) {
      emit(FilterMealNameLoaded(mealsByNameList: mealsByNameList));
    });
  }

  Future getMealsByCategoryList(String mealCategory) async {
    emit(FilterLoading());

    var result = await searchRepo.getMealsByCategory(mealCategory);
    result.fold((failure) => emit(FilterEmpty()), (mealsByCategry) {
      emit(FilterMealCategoryLoaded(mealsByCategry: mealsByCategry));
    });
  }

  Future getMealsByIngredientList(String mealIngredient) async {
    emit(FilterLoading());

    var result = await searchRepo.getMealsByName(mealIngredient);
    result.fold((failure) => emit(FilterEmpty()), (mealsByIngredientList) {
      emit(FilterMealIngredientLoaded(
          mealsByIngredientList: mealsByIngredientList));
    });
  }

  Future getMealsByFirstLitterList(String mealFirstLitter) async {
    emit(FilterLoading());

    var result = await searchRepo.getMealsByFirstLitter(mealFirstLitter);
    result.fold((failure) => emit(FilterEmpty()), (mealByFirstLitter) {
      emit(
          SearchByFirstLitterLoaded(mealsByFirstLitterList: mealByFirstLitter));
    });
  }
}
