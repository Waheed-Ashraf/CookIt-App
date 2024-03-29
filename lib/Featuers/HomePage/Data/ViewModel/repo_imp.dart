import 'package:cook_it_app/Core/errors/Failuer.dart';
import 'package:cook_it_app/Core/utils/api_service.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/ViewModel/repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RepoImp implements Repo {
  final ApiService apiService;

  RepoImp(this.apiService);
  @override
  Future<Either<Failure, List<MealsModel>>> getEgyptianMeals(
      String countryName) async {
    try {
      var response =
          await apiService.get(endPoint: 'filter.php?a=$countryName');

      List<MealsModel> egyptionMealsList = [];
      for (var element in response['meals']) {
        egyptionMealsList.add(MealsModel.fromJson(element));
      }
      return right(egyptionMealsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<MealsModel>>> getFeaturedMeals() async {
    try {
      var response = await apiService.get(endPoint: 'search.php?f=a');

      List<MealsModel> featuredMealsList = [];
      for (var element in response['meals']) {
        featuredMealsList.add(MealsModel.fromJson(element));
      }
      return right(featuredMealsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, MealsModel>> getMealDetails(String mealId) async {
    try {
      var response = await apiService.get(endPoint: 'lookup.php?i=$mealId');

      return right(MealsModel.fromJson(response['meals'][0]));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<MealsModel>>> getCountriesNames() async {
    try {
      var response = await apiService.get(endPoint: 'list.php?a=list');

      List<MealsModel> countriesNameList = [];
      for (var element in response['meals']) {
        countriesNameList.add(MealsModel.fromJson(element));
      }
      return right(countriesNameList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, MealsModel>> getRandomMeal() async {
    try {
      var response = await apiService.get(endPoint: 'random.php');

      return right(MealsModel.fromJson(response['meals'][0]));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
