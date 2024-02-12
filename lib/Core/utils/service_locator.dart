import 'package:cook_it_app/Core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  // getIt.registerSingleton<HomeRepoimp>(
  //   HomeRepoimp(
  //     getIt.get<ApiService>(),
  //   ),
  // );
  // getIt.registerSingleton<SearchRepoImp>(
  //   SearchRepoImp(
  //     getIt.get<ApiService>(),
  //   ),
  // );
}
