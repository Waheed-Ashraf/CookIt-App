import 'package:animate_do/animate_do.dart';
import 'package:cook_it_app/Core/utils/service_locator.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Core/widgets/custom_error_widget.dart';
import 'package:cook_it_app/Core/widgets/custom_loading_indicator.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/EgyptionFood/egyption_food_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/meal_item.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/meal_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesFoodView extends StatelessWidget {
  final String countryName;
  const CountriesFoodView({super.key, required this.countryName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<EgyptionFoodCubit>()..getEgyptionFoodList(countryName),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Text(
              countryName,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            )),
        body: BlocBuilder<EgyptionFoodCubit, EgyptionFoodState>(
          builder: (context, state) {
            if (state is EgyptionFoodLoaded) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FadeInUp(
                  duration: const Duration(seconds: 1),
                  child: GridView.builder(
                    itemCount: state.egyptionMealsList.length,
                    physics: const BouncingScrollPhysics(),
                    clipBehavior: Clip.none,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                                        state.egyptionMealsList[index].idMeal!),
                              ),
                            );
                          },
                          child: MealItem(
                              mealsModel: state.egyptionMealsList[index]));
                    },
                  ),
                ),
              );
            } else if (state is EgyptionFoodError) {
              return CustomErrorWidget(errMessage: state.errorMessage);
            } else {
              return CustomLoadingIndicator(
                  hight: MediaQuery.of(context).size.height);
            }
          },
        ),
      ),
    );
  }
}
