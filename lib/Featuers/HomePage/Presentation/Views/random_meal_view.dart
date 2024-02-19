
import 'package:cook_it_app/Core/widgets/custom_error_widget.dart';
import 'package:cook_it_app/Core/widgets/custom_loading_indicator.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/RandomMeal/random_meal_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/meal_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RondomMealView extends StatelessWidget {
  const RondomMealView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomMealCubit, RandomMealState>(
      builder: (context, state) {
        if (state is RandomMealLoaded) {
          return MealDetailsView(mealId: state.randomMeal.idMeal!);
        } else if (state is RandomMealError) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return CustomLoadingIndicator(
              hight: MediaQuery.of(context).size.height);
        }
      },
    );
  }
}
