import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/ViewModel/repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'egyption_food_state.dart';

class EgyptionFoodCubit extends Cubit<EgyptionFoodState> {
  final Repo repo;
  EgyptionFoodCubit(this.repo) : super(EgyptionFoodInitial());

  Future getEgyptionFoodList(String countryName) async {
    var result = await repo.getEgyptianMeals(countryName);
    result.fold(
        (failure) => emit(EgyptionFoodError(errorMessage: failure.errMessage)),
        (egyptionFoodList) =>
            emit(EgyptionFoodLoaded(egyptionMealsList: egyptionFoodList)));
  }
}
