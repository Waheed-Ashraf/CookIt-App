import 'package:animate_do/animate_do.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Core/widgets/custom_error_widget.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/EgyptionFood/egyption_food_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EgyptionFoodList extends StatelessWidget {
  const EgyptionFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EgyptionFoodCubit, EgyptionFoodState>(
        builder: (context, state) {
      if (state is EgyptionFoodLoaded) {
        return FadeInUp(
          duration: const Duration(seconds: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Egyption Food",
                        style: Styles.textStyle18.copyWith(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        )),
                    InkWell(
                      onTap: () {
                        //TODO: Routting to see more page
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('See More',
                                style: Styles.textStyle16.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                )),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return MealItem(
                        mealsModel: state.egyptionMealsList[index],
                      );
                    }),
              ),
            ],
          ),
        );
      } else if (state is EgyptionFoodError) {
        return CustomErrorWidget(errMessage: state.errorMessage);
      } else {
        return const SizedBox(
          width: double.infinity,
          height: 250,
        );
      }
    });
  }
}
