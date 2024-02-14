import 'package:flutter/material.dart';

class BookMarkWidget extends StatelessWidget {
  const BookMarkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade300.withOpacity(.5)),
      child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            size: 20,
            color: Theme.of(context).colorScheme.secondary,
          )),
    );
  }
}
