import 'package:cached_network_image/cached_network_image.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/bookmark.dart';
import 'package:flutter/material.dart';

class FeaturedMealItem extends StatelessWidget {
  final MealsModel mealsModel;
  const FeaturedMealItem({
    super.key,
    required this.mealsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 6,
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: mealsModel.strMealThumb!,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(right: 0, child: BookMarkWidget()),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              mealsModel.strMeal,
              style: Styles.textStyle16.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          const Divider(
            height: 10,
            thickness: .7,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "${mealsModel.strArea!} Food",
                style: Styles.textStyle16.copyWith(
                    color: Theme.of(context).colorScheme.inversePrimary),
              )),
          const Divider(
            height: 10,
            thickness: .7,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 5,
              ),
              child: Text(
                "Category: ${mealsModel.strCategory!}",
                style: Styles.textStyle16.copyWith(
                    color: Theme.of(context).colorScheme.inversePrimary),
              )),
        ],
      ),
    );
  }
}
