import 'package:cook_it_app/Core/errors/Failuer.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:dartz/dartz.dart';

abstract class Repo {
  Future<Either<Failure, List<MealsModel>>> getFeaturedMeals();
  Future<Either<Failure, List<MealsModel>>> getEgyptianMeals(
      String countryName);
  Future<Either<Failure, MealsModel>> getMealDetails(String mealId);
  Future<Either<Failure, List<MealsModel>>> getCountriesNames();
}
