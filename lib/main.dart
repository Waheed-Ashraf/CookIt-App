import 'package:cook_it_app/Core/theme/app_theme.dart';
import 'package:cook_it_app/Core/utils/service_locator.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMood,
      home: const HomeView(),
    );
  }
}
