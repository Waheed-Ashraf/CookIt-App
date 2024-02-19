import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:flutter/material.dart';

class TableOfIngredient extends StatelessWidget {
  final MealsModel mealsModel;
  const TableOfIngredient({super.key, required this.mealsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Table(
          border:
              TableBorder.all(color: Theme.of(context).colorScheme.secondary),
          children: [
            if (mealsModel.strIngredient1 != null &&
                mealsModel.strIngredient1 != "" &&
                mealsModel.strIngredient1 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient1!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure1!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient2 != null &&
                mealsModel.strIngredient2 != "" &&
                mealsModel.strIngredient2 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient2!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure2!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient3 != null &&
                mealsModel.strIngredient3 != "" &&
                mealsModel.strIngredient3 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient3!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure3!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient4 != null &&
                mealsModel.strIngredient4 != "" &&
                mealsModel.strIngredient4 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient4!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure4!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient5 != null &&
                mealsModel.strIngredient5 != "" &&
                mealsModel.strIngredient5 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient5!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure5!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient6 != null &&
                mealsModel.strIngredient6 != "" &&
                mealsModel.strIngredient6 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient6!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure6!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient7 != null &&
                mealsModel.strIngredient7 != "" &&
                mealsModel.strIngredient7 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient7!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure7!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient8 != null &&
                mealsModel.strIngredient8 != "" &&
                mealsModel.strIngredient8 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient8!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure8!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient9 != null &&
                mealsModel.strIngredient9 != "" &&
                mealsModel.strIngredient9 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient9!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure9!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient10 != null &&
                mealsModel.strIngredient10 != "" &&
                mealsModel.strIngredient10 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient10!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure10!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient11 != null &&
                mealsModel.strIngredient11 != "" &&
                mealsModel.strIngredient11 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient11!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure11!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient12 != null &&
                mealsModel.strIngredient12 != "" &&
                mealsModel.strIngredient12 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient12!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure12!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient13 != null &&
                mealsModel.strIngredient13 != "" &&
                mealsModel.strIngredient13 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient13!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure13!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient14 != null &&
                mealsModel.strIngredient14 != "" &&
                mealsModel.strIngredient14 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient14!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure14!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient15 != null &&
                mealsModel.strIngredient15 != "" &&
                mealsModel.strIngredient15 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient15!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure15!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient16 != null &&
                mealsModel.strIngredient16 != "" &&
                mealsModel.strIngredient16 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient16!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure16!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient17 != null &&
                mealsModel.strIngredient17 != "" &&
                mealsModel.strIngredient17 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient17!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure17!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient18 != null &&
                mealsModel.strIngredient18 != "" &&
                mealsModel.strIngredient18 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient18!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure18!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient19 != null &&
                mealsModel.strIngredient19 != "" &&
                mealsModel.strIngredient19 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient19!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure19!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ]),
            if (mealsModel.strIngredient20 != null &&
                mealsModel.strIngredient20 != "" &&
                mealsModel.strIngredient20 != " ")
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strIngredient20!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealsModel.strMeasure20!,
                      style: Styles.textStyle14.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ])
          ]),
    );
  }
}
