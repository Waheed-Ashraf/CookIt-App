// import 'package:cook_it_app/Core/utils/service_locator.dart';
// import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/MealDetailsCubit/meal_details_cubit.dart';
// import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/home_view.dart';
// import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/meal_details_view.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

// abstract class AppRouter {
//   static const kHomeView = '/homeView';
//   static const kMealDetailsView = '/mealDetailsView';

//   static final router = GoRouter(
//     routes: [
//       // GoRoute(
//       //   path: '/',
//       //   builder: (context, state) => const SplashView(),
//       // ),

//       GoRoute(
//         path: '/',
//         builder: (context, state) => const HomeView(),
//       ),
//       GoRoute(
//         path: kMealDetailsView,
//         builder: (context, state) => BlocProvider(
//           create: (context) => getIt<MealDetailsCubit>(),
//           child: MealDetailsView(
//             mealId: state.extra as String,
//           ),
//         ),
//       ),
//     ],
//   );
// }
