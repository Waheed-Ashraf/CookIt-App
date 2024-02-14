import 'package:card_swiper/card_swiper.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/egyption_food_List.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/featured_meal_item.dart';
import 'package:cook_it_app/constent.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Swiper(
              itemCount: 3,
              itemWidth: MediaQuery.of(context).size.width * .65,
              itemHeight: MediaQuery.of(context).size.height * .55,
              layout: SwiperLayout.STACK, // Change layout to STACK
              pagination: SwiperPagination(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .57),
                builder: DotSwiperPaginationBuilder(
                  color: kDotsColor,
                  activeColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
              itemBuilder: (context, index) {
                return const FeaturedMealItem();
              }),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Egyption Food',
              style: Styles.textStyle18.copyWith(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          const EgyptionFoodList(),
        ],
      ),
    ));
  }
}
