import 'package:cook_it_app/Featuers/Search/Presentation/Manager/Button_cubit/button_cubit.dart';
import 'package:cook_it_app/Featuers/Search/Presentation/Manager/FilterCubit/filter_cubit.dart';
import 'package:cook_it_app/Featuers/Search/Presentation/Views/Widgets/custom_button.dart';
import 'package:cook_it_app/Featuers/Search/Presentation/Views/Widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFiltersSection extends StatelessWidget {
  const SearchFiltersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButton(
          onPressed: () {
            BlocProvider.of<ButtonCubit>(context).changeButton(0);
            BlocProvider.of<FilterCubit>(context)
                .getMealsByNameList(myController.text);
          },
          index: 0,
          text: 'Meal Name',
        ),
        CustomButton(
          onPressed: () {
            BlocProvider.of<ButtonCubit>(context).changeButton(1);
            BlocProvider.of<FilterCubit>(context)
                .getMealsByCategoryList(myController.text);
          },
          index: 1,
          text: 'Meal Category',
        ),
        CustomButton(
          onPressed: () {
            BlocProvider.of<ButtonCubit>(context).changeButton(2);
            BlocProvider.of<FilterCubit>(context)
                .getMealsByIngredientList(myController.text);
          },
          index: 2,
          text: "Meal Ingredient",
        ),
      ],
    );
  }
}
