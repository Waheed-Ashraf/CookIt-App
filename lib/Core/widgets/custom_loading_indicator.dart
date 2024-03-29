import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key, required this.hight});

  final double hight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
      child: Center(
          child: Lottie.asset('assets/loading_animation.json',
              width: 100, height: 100, fit: BoxFit.contain)),
    );
  }
}
