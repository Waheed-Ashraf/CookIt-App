import 'package:card_swiper/card_swiper.dart';

import 'package:cook_it_app/Core/utils/text_style.dart';

import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/meal_item.dart';
import 'package:cook_it_app/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                builder: const DotSwiperPaginationBuilder(
                  color: kDotsColor,
                  activeColor: kPrimaryColor,
                ),
              ),
              itemBuilder: (context, index) {
                return const MealItem();
              }),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Egyption Food',
              style: Styles.textStyle18,
            ),
          )
        ],
      ),
    ));
  }
}
