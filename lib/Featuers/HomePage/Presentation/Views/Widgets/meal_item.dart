import 'package:cached_network_image/cached_network_image.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/bookmark.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MealItem extends StatelessWidget {
  final MealsModel mealsModel;
  const MealItem({
    super.key,
    required this.mealsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 3,
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    width: 150,
                    height: 140,
                    imageUrl: mealsModel.strMealThumb!,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey[850]!,
                      highlightColor: Colors.grey[800]!,
                      child: Container(
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(right: 0, child: BookMarkWidget()),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                mealsModel.strMeal,
                maxLines: 1,
                style: Styles.textStyle14.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            const Divider(
              height: 10,
              thickness: .7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Category: ${mealsModel.strCategory}',
                style: Styles.textStyle14.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
