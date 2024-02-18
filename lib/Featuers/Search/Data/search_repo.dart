import 'package:cook_it_app/Core/errors/Failuer.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<MealsModel>>> getMealsByName(String mealName);
  Future<Either<Failure, List<MealsModel>>> getMealsByCategory(
      String mealCategory);
  Future<Either<Failure, List<MealsModel>>> getMealsByIngredient(
      String mealIngredient);
  Future<Either<Failure, List<MealsModel>>> getMealsByFirstLitter(
      String mealFirstLitter);
}
