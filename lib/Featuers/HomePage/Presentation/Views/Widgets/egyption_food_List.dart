import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/meal_item.dart';
import 'package:flutter/material.dart';

class EgyptionFoodList extends StatelessWidget {
  const EgyptionFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return const MealItem();
          }),
    );
  }
}
