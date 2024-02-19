import 'package:animate_do/animate_do.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Core/widgets/custom_error_widget.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/MealDetailsCubit/meal_details_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/bookmark.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/table_of_ingredient.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/youtube_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllMealDetails extends StatelessWidget {
  const AllMealDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealDetailsCubit, MealDetailsState>(
      builder: (context, state) {
        if (state is MealDetailsLoaded) {
          return FadeInUp(
            from: 20,
            duration: const Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.mealDetails.strMeal!,
                        style: Styles.textStyle20.copyWith(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      const BookMarkWidget(),
                    ],
                  ),
                  Divider(
                    thickness: .7,
                    height: 8,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Area: ${state.mealDetails.strArea!}",
                        style: Styles.textStyle16.copyWith(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      Text(
                        "Category: ${state.mealDetails.strCategory!}",
                        style: Styles.textStyle16.copyWith(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: .7,
                    height: 8,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  Text(
                    "Ingredient:",
                    style: Styles.textStyle16.copyWith(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  TableOfIngredient(mealsModel: state.mealDetails),
                  Divider(
                    thickness: .7,
                    height: 8,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  Text(
                    'How it be made!? ',
                    style: TextStyle(
                      overflow: TextOverflow.fade,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.2,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    "${state.mealDetails.strInstructions}",
                    style: TextStyle(
                      overflow: TextOverflow.fade,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  Divider(
                    thickness: .7,
                    height: 24,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  state.mealDetails.strYoutube == ""
                      ? Container()
                      : YoutubeVideoPlayer(
                          mealVideoUrl: state.mealDetails.strYoutube!,
                        )
                ],
              ),
            ),
          );
        } else if (state is MealDetailsError) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
