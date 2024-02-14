import 'package:cook_it_app/Core/utils/service_locator.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
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
        ],
        child: SafeArea(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FeaturedMealSwiper(),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Egyption Food',
                  style: Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const EgyptionFoodList(),
            ],
          ),
        )));
  }
}
