import 'package:cook_it_app/Core/errors/Failuer.dart';
import 'package:cook_it_app/Core/utils/api_service.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/Search/Data/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo {
  final ApiService apiService;

  SearchRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<MealsModel>>> getMealsByName(
      String mealName) async {
    try {
      var response = await apiService.get(endPoint: "search.php?s=$mealName");
      List<MealsModel> mealsByNameList = [];
      for (var element in response['meals']) {
        mealsByNameList.add(MealsModel.fromJson(element));
      }
      return right(mealsByNameList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<MealsModel>>> getMealsByCategory(
      String mealCategory) async {
    try {
      var response =
          await apiService.get(endPoint: "filter.php?c=$mealCategory");
      List<MealsModel> mealsByCategoryList = [];
      for (var element in response['meals']) {
        mealsByCategoryList.add(MealsModel.fromJson(element));
      }
      return right(mealsByCategoryList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<MealsModel>>> getMealsByIngredient(
      String mealIngredient) async {
    try {
      var response =
          await apiService.get(endPoint: "filter.php?i=$mealIngredient");
      List<MealsModel> mealsByIngrediantList = [];
      for (var element in response['meals']) {
        mealsByIngrediantList.add(MealsModel.fromJson(element));
      }
      return right(mealsByIngrediantList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<MealsModel>>> getMealsByFirstLitter(
      String mealFirstLitter) async {
    try {
      var response =
          await apiService.get(endPoint: "search.php?f=$mealFirstLitter");
      List<MealsModel> mealsByFirstLitterList = [];
      for (var element in response['meals']) {
        mealsByFirstLitterList.add(MealsModel.fromJson(element));
      }
      return right(mealsByFirstLitterList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
