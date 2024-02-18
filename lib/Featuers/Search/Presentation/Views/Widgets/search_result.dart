import 'package:animate_do/animate_do.dart';
import 'package:cook_it_app/Core/widgets/custom_loading_indicator.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/meal_item.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/meal_details_view.dart';
import 'package:cook_it_app/Featuers/Search/Presentation/Manager/FilterCubit/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        if (state is FilterMealNameLoaded) {
          return FadeInUp(
            duration: const Duration(seconds: 1),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: state.mealsByNameList.length,
              physics: const BouncingScrollPhysics(),
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 3,
                childAspectRatio: 4 / 6,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MealDetailsView(
                              mealId: state.mealsByNameList[index].idMeal!),
                        ),
                      );
                    },
                    child: MealItem(mealsModel: state.mealsByNameList[index]));
              },
            ),
          );
        } else if (state is FilterEmpty) {
          return Center(child: Lottie.asset('assets/searching_error.json'));
        } else if (state is FilterLoading) {
          return const Padding(
            padding: EdgeInsets.only(top: 100),
            child: CustomLoadingIndicator(hight: 200),
          );
        } else if (state is FilterMealCategoryLoaded) {
          return FadeInUp(
            duration: const Duration(seconds: 1),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: state.mealsByCategry.length,
              physics: const BouncingScrollPhysics(),
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 3,
                childAspectRatio: 4 / 6,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MealDetailsView(
                              mealId: state.mealsByCategry[index].idMeal!),
                        ),
                      );
                    },
                    child: MealItem(mealsModel: state.mealsByCategry[index]));
              },
            ),
          );
        } else if (state is FilterMealIngredientLoaded) {
          return FadeInUp(
            duration: const Duration(seconds: 1),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: state.mealsByIngredientList.length,
              physics: const BouncingScrollPhysics(),
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 3,
                childAspectRatio: 4 / 6,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MealDetailsView(
                              mealId:
                                  state.mealsByIngredientList[index].idMeal!),
                        ),
                      );
                    },
                    child: MealItem(
                        mealsModel: state.mealsByIngredientList[index]));
              },
            ),
          );
        } else if (state is SearchByFirstLitterLoaded) {
          return FadeInUp(
            duration: const Duration(seconds: 1),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: state.mealsByFirstLitterList.length,
              physics: const BouncingScrollPhysics(),
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 3,
                childAspectRatio: 4 / 6,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MealDetailsView(
                              mealId:
                                  state.mealsByFirstLitterList[index].idMeal!),
                        ),
                      );
                    },
                    child: MealItem(
                        mealsModel: state.mealsByFirstLitterList[index]));
              },
            ),
          );
        } else {
          return Center(child: Lottie.asset('assets/search_view.json'));
        }
      },
    );
  }
}
