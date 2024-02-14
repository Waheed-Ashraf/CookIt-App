import 'package:card_swiper/card_swiper.dart';
import 'package:cook_it_app/Core/widgets/custom_error_widget.dart';
import 'package:cook_it_app/Core/widgets/custom_loading_indicator.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/FeaturedMealsCubit/featured_meals_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/featured_meal_item.dart';
import 'package:cook_it_app/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedMealSwiper extends StatelessWidget {
  const FeaturedMealSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedMealsCubit, FeaturedMealsState>(
      builder: (context, state) {
        if (state is FeaturedMealsLoaded) {
          return Swiper(
              itemCount: state.featuredMealsList.length,
              itemWidth: 235,
              itemHeight: 343,
              layout: SwiperLayout.STACK, // Change layout to STACK
              pagination: SwiperPagination(
                margin: const EdgeInsets.only(top: 350),
                builder: DotSwiperPaginationBuilder(
                  color: kDotsColor,
                  activeColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
              itemBuilder: (context, index) {
                return FeaturedMealItem(
                  mealsModel: state.featuredMealsList[index],
                );
              });
        } else if (state is FeaturedMealsError) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return CustomLoadingIndicator(
              hight: MediaQuery.of(context).size.height);
        }
      },
    );
  }
}
