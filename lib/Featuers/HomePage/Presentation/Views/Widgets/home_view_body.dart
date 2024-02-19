import 'package:cook_it_app/Core/utils/service_locator.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/EgyptionFood/egyption_food_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/FeaturedMealsCubit/featured_meals_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/egyption_food_List.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/featured_meals_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<FeaturedMealsCubit>()..getFeaturedMeals(),
          ),
          BlocProvider(
            create: (context) =>
                getIt<EgyptionFoodCubit>()..getEgyptionFoodList("Egyptian"),
          ),
        ],
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Theme.of(context).colorScheme.primary,
            tooltip: 'Get Random Meal',
            onPressed: () {},
            child: Image.asset(
              "assets/surprise-box.png",
              width: 35,
              fit: BoxFit.contain,
            ),
          ),
          body: const SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FeaturedMealSwiper(),
                  SizedBox(
                    height: 16,
                  ),
                  EgyptionFoodList(),
                ],
              ),
            ),
          ),
        ));
  }
}
