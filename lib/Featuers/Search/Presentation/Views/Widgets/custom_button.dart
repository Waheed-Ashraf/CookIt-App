import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/Search/Presentation/Manager/Button_cubit/button_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    required this.onPressed,
    required this.index,
  });
  final int index;

  final void Function() onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonCubit, int>(builder: (context, state) {
      Color buttonColor =
          index == state ? const Color(0xffFFB039) : Colors.grey;

      return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  12,
                ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
              color: textColor ?? Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: fontSize ?? 10,
            ),
          ),
        ),
      );
    });
  }
}
