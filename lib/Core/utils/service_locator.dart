import 'package:cook_it_app/Core/utils/api_service.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/ViewModel/repo.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/ViewModel/repo_imp.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/FeaturedMealsCubit/featured_meals_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void serviceLocator() {
  // getIt.registerSingleton<MealsModel>(getIt());

  // cubit
  getIt.registerFactory<FeaturedMealsCubit>(() => FeaturedMealsCubit(getIt()));

  //Repo
  getIt.registerLazySingleton<Repo>(() => RepoImp(getIt()));

  //webServices
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
}
