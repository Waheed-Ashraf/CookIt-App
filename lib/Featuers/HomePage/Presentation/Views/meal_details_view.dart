import 'package:cook_it_app/Core/utils/service_locator.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/MealDetailsCubit/meal_details_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/all_meals_detail.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/sliver_appbar_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MealDetailsView extends StatelessWidget {
  final String mealId;
  const MealDetailsView({super.key, required this.mealId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MealDetailsCubit>()..getMealDetail(mealId),
      child: Scaffold(
          body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: false,
            expandedHeight: MediaQuery.of(context).size.height * .463,
            flexibleSpace:
                const FlexibleSpaceBar(background: SliverAppBarSection()),
          ),
          const SliverToBoxAdapter(child: AllMealDetails()),
        ],
      )),
    );
  }
}
