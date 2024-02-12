import 'package:cook_it_app/Core/utils/assets_data.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/constent.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: MealItem(
              cardWidth: MediaQuery.of(context).size.width * .5,
              cardHight: MediaQuery.of(context).size.height * .5),
        ),
      ),
    );
  }
}

class MealItem extends StatelessWidget {
  final double cardWidth;
  final double cardHight;

  const MealItem({super.key, required this.cardWidth, required this.cardHight});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: cardWidth,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [kPrimaryColor, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(AssetsData.testImage),
                ),
                const Positioned(child: BookMarkWidget()),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Passta',
                style: Styles.textStyle18,
              ),
            ),
            const Divider(
              height: 8,
              thickness: .7,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Italy',
                style: Styles.textStyle18,
              ),
            ),
            const Divider(
              height: 8,
              thickness: .7,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Cat : Nesha',
                style: Styles.textStyle18,
              ),
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}

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
          icon: const Icon(
            Icons.bookmark_add,
            size: 20,
          )),
    );
  }
}
