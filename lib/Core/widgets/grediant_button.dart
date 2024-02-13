import 'package:cook_it_app/constent.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const GradientButton(
      {required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.secondary;
    Color secondaryColor = Colors.white;

    const double borderRadius = 16;

    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: LinearGradient(
              colors: [secondaryColor, primaryColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
              const EdgeInsets.only(right: 50, left: 50, top: 8, bottom: 8)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
