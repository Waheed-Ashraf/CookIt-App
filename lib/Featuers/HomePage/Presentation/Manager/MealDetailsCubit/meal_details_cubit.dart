import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Data/ViewModel/repo.dart';

part 'meal_details_state.dart';

class MealDetailsCubit extends Cubit<MealDetailsState> {
  final Repo repo;
  MealDetailsCubit(this.repo) : super(MealDetailsInitial());

  Future getMealDetail(String mealID) async {
    var result = await repo.getMealDetails(mealID);
    result.fold(
        (failure) => emit(MealDetailsError(errorMessage: failure.errMessage)),
        (mealDetails) => emit(MealDetailsLoaded(mealDetails: mealDetails)));
  }
}
