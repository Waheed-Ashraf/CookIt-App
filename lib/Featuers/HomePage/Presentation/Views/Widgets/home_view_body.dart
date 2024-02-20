import 'package:cook_it_app/Core/utils/service_locator.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/EgyptionFood/egyption_food_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/FeaturedMealsCubit/featured_meals_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/RandomMeal/random_meal_cubit.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/egyption_food_List.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/featured_meals_swiper.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/random_meal_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<FeaturedMealsCubit>()..getFeaturedMeals(),
          ),
          BlocProvider(
            create: (context) =>
                getIt<EgyptionFoodCubit>()..getEgyptionFoodList("Egyptian"),
          ),
        ],
        child: Scaffold(
          extendBodyBehindAppBar: true,
          floatingActionButton: FloatingActionButton(
            backgroundColor:
                Theme.of(context).colorScheme.primary.withOpacity(.7),
            tooltip: 'Meal of the day',
            onPressed: () {
              BlocProvider.of<RandomMealCubit>(context).getRandomMeal();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RondomMealView(),
                ),
              );
            },
            child: Image.asset(
              "assets/surprise-box.png",
              width: 35,
              fit: BoxFit.contain,
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  child: const DrawerHeader(
                    decoration: BoxDecoration(
                        // color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage("assets/dark.jpg"),
                            fit: BoxFit.cover)),
                    child: Text('Drawer Header'),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.toggleOff)),
                Divider(
                  height: 8,
                  thickness: .7,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'About :',
                      style: Styles.textStyle16.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  radius: MediaQuery.of(context).size.width * .2,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * .19,
                    backgroundImage: const AssetImage('assets/about_image.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        _launchURL(
                            'https://www.linkedin.com/in/waheed-ashraf-18a197214/');
                      },
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconButton(
                      onPressed: () {
                        _launchURL('https://github.com/Waheed-Ashraf');
                      },
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconButton(
                      onPressed: () {
                        _launchURL(
                            'https://www.facebook.com/waheed.ashraf.1650332/?locale=ar_AR');
                      },
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          body: const SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FeaturedMealSwiper(),
                  SizedBox(
                    height: 16,
                  ),
                  EgyptionFoodList(),
                ],
              ),
            ),
          ),
        ));
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
