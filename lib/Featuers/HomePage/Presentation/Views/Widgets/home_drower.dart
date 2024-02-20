import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/themes_cubit/themes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDrower extends StatefulWidget {
  const HomeDrower({super.key});

  @override
  State<HomeDrower> createState() => _HomeDrowerState();
}

class _HomeDrowerState extends State<HomeDrower> {
  bool isToggleOn = false;

  void _toggle() {
    setState(() {
      isToggleOn = !isToggleOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .4,
            child: DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: isToggleOn
                          ? const AssetImage(
                              "assets/dark.jpg",
                            )
                          : const AssetImage(
                              "assets/light.jpg",
                            ))),
              child: const Text('Drawer Header'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark Theme',
                    style: Styles.textStyle16.copyWith(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: isToggleOn
                      ? const Icon(
                          FontAwesomeIcons.toggleOff,
                          color: Colors.white,
                          size: 30,
                        )
                      : const Icon(
                          FontAwesomeIcons.toggleOn,
                          color: Colors.black,
                          size: 30,
                        ),
                  onPressed: () {
                    _toggle();
                    BlocProvider.of<ThemesCubit>(context).toggleTheme();
                  },
                ),
                Text('Light Theme',
                    style: Styles.textStyle16.copyWith(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )),
              ],
            ),
          ),
          Divider(
            height: 8,
            thickness: .7,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'About :',
                style: Styles.textStyle16.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            radius: MediaQuery.of(context).size.width * .2,
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width * .18,
              backgroundImage: const AssetImage('assets/about_image.jpg'),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  _launchURL(
                      'https://www.linkedin.com/in/waheed-ashraf-18a197214/');
                },
                icon: Icon(
                  FontAwesomeIcons.linkedin,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              IconButton(
                onPressed: () {
                  _launchURL('https://github.com/Waheed-Ashraf');
                },
                icon: Icon(
                  FontAwesomeIcons.github,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              IconButton(
                onPressed: () {
                  _launchURL(
                      'https://www.facebook.com/waheed.ashraf.1650332/?locale=ar_AR');
                },
                icon: Icon(
                  FontAwesomeIcons.facebook,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
