import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/Search/Data/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  final SearchRepo searchRepo;
  FilterCubit(this.searchRepo) : super(FilterInitial());
  Future getMealsByNameList(String mealName) async {
    emit(FilterMealNameLoading());

    var result = await searchRepo.getMealsByName(mealName);
    result.fold((failure) => emit(FilterMealNameEmpty()), (mealsByNameList) {
      emit(FilterMealNameLoaded(mealsByNameList: mealsByNameList));
    });
  }
}
