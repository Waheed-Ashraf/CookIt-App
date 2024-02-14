import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/ViewModel/repo.dart';
import 'package:flutter/material.dart';

part 'featured_meals_state.dart';

class FeaturedMealsCubit extends Cubit<FeaturedMealsState> {
  final Repo repo;
  FeaturedMealsCubit(this.repo) : super(FeaturedMealsInitial());
  Future getFeaturedMeals() async {
    emit(FeaturedMealsLoading());
    var result = await repo.getFeaturedMeals();

    result.fold(
        (failure) => emit(FeaturedMealsError(errorMessage: failure.errMessage)),
        (featuredMealsList) =>
            emit(FeaturedMealsLoaded(featuredMealsList: featuredMealsList)));
  }
}
