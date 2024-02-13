import 'package:cook_it_app/Core/utils/assets_data.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/bookmark.dart';
import 'package:cook_it_app/constent.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
      child: Card(
        elevation: 3,
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
                    child: Image.asset(
                      AssetsData.testImage,
                      width: 150,
                    ),
                  ),
                  const Positioned(child: BookMarkWidget()),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Passta',
                  style: Styles.textStyle18,
                ),
              ),
              const Divider(
                height: 8,
                thickness: .7,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Cat : Nesha',
                  style: Styles.textStyle18,
                ),
              ),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
