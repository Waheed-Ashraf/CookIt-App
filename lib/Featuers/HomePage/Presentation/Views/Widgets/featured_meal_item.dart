import 'package:cook_it_app/Core/utils/assets_data.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/bookmark.dart';
import 'package:flutter/material.dart';

class FeaturedMealItem extends StatelessWidget {
  const FeaturedMealItem({
    super.key,
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
                child: Image.asset(AssetsData.testImage),
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
              'Passta',
              style: Styles.textStyle18.copyWith(
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
                'Italy',
                style: Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.inversePrimary),
              )),
          const Divider(
            height: 10,
            thickness: .7,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Cat : Nesha',
                style: Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.inversePrimary),
              )),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
