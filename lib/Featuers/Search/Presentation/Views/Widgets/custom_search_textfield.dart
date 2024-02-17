import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  final Color outlineBorderColor;
  CustomSearchTextField({
    super.key,
    required this.outlineBorderColor,
  });
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).colorScheme.inversePrimary,
      style: Styles.textStyle16.copyWith(
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      controller: myController,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        hintStyle: Styles.textStyle16.copyWith(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IconButton(
            onPressed: () {},
            icon: Opacity(
              opacity: .8,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: outlineBorderColor,
      ),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}
