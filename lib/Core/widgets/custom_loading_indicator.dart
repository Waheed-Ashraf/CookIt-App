import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key, required this.hight});

  final double hight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * hight,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
