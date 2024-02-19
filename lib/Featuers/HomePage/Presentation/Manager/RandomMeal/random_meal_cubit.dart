import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Data/ViewModel/repo.dart';

part 'random_meal_state.dart';

class RandomMealCubit extends Cubit<RandomMealState> {
  final Repo repo;
  RandomMealCubit(this.repo) : super(RandomMealInitial());
  Future getRandomMeal() async {
    var result = await repo.getRandomMeal();
    result.fold(
      (failure) => emit(RandomMealError(errorMessage: failure.errMessage)),
      (rondomMeal) => emit(
        RandomMealLoaded(randomMeal: rondomMeal),
      ),
    );
  }
}
