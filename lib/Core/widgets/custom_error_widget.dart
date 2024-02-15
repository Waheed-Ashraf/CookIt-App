import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.textStyle18.copyWith(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
