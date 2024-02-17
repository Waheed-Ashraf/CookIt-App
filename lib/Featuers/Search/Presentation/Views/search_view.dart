import 'package:cook_it_app/Core/utils/service_locator.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Featuers/Search/Presentation/Manager/Button_cubit/button_cubit.dart';
import 'package:cook_it_app/Featuers/Search/Presentation/Manager/FilterCubit/filter_cubit.dart';
import 'package:cook_it_app/Featuers/Search/Presentation/Views/Widgets/custom_search_textfield.dart';
import 'package:cook_it_app/Featuers/Search/Presentation/Views/Widgets/search_filters_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<FilterCubit>(),
        ),
        BlocProvider(
          create: (context) => ButtonCubit(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchTextField(
                  outlineBorderColor:
                      Theme.of(context).colorScheme.inversePrimary,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Search Filters : ',
                  style: Styles.textStyle16.copyWith(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const SearchFiltersSection(),
                Divider(
                  thickness: .7,
                  height: 10,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
