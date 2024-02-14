import 'package:cook_it_app/Core/widgets/custom_bottom_navbar.dart';
import 'package:cook_it_app/Featuers/Countries/Presentation/Views/countries_view.dart';
import 'package:cook_it_app/Featuers/Favorit/presentation/Views/favorit_view.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/Widgets/home_view_body.dart';
import 'package:cook_it_app/Featuers/Search/Views/search_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomeViewBody(),
    const SearchView(),
    const FavoritView(),
    const CountriesView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(onTabChange: (index) {
        setState(() {
          selectedIndex = index;
        });
      }),
      body: pages[selectedIndex],
    );
  }
}
