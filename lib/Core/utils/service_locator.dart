import 'package:cook_it_app/Core/utils/api_service.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/ViewModel/repo.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/ViewModel/repo_imp.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/EgyptionFood/egyption_food_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/FeaturedMealsCubit/featured_meals_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/MealDetailsCubit/meal_details_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void serviceLocator() {
  // getIt.registerSingleton<MealsModel>(getIt());

  // cubit
  getIt.registerFactory<FeaturedMealsCubit>(() => FeaturedMealsCubit(getIt()));
  getIt.registerFactory<EgyptionFoodCubit>(() => EgyptionFoodCubit(getIt()));
  getIt.registerFactory<MealDetailsCubit>(() => MealDetailsCubit(getIt()));

  //Repo
  getIt.registerLazySingleton<Repo>(() => RepoImp(getIt()));

  //webServices
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
}
