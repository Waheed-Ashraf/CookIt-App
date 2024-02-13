import 'package:cook_it_app/Core/utils/assets_data.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/bookmark.dart';
import 'package:cook_it_app/constent.dart';
import 'package:flutter/material.dart';

class FeaturedMealItem extends StatelessWidget {
  const FeaturedMealItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [kPrimaryColor, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(AssetsData.testImage),
                ),
                const Positioned(child: BookMarkWidget()),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Passta',
                style: Styles.textStyle18,
              ),
            ),
            const Divider(
              height: 10,
              thickness: .7,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Italy',
                style: Styles.textStyle18,
              ),
            ),
            const Divider(
              height: 10,
              thickness: .7,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Cat : Nesha',
                style: Styles.textStyle18,
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
