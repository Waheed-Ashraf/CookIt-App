import 'package:cook_it_app/Core/utils/service_locator.dart';
import 'package:cook_it_app/Core/utils/text_style.dart';
import 'package:cook_it_app/Core/widgets/custom_error_widget.dart';
import 'package:cook_it_app/Core/widgets/custom_loading_indicator.dart';
import 'package:cook_it_app/Featuers/Countries/Presentation/Manager/CountriesName/countries_name_cubit.dart';
import 'package:cook_it_app/Featuers/Countries/Presentation/Views/countries_food_view.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/EgyptionFood/egyption_food_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesView extends StatelessWidget {
  const CountriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CountriesNameCubit>()..getCountriesNameList(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            "Choose Country",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ),
        body: BlocBuilder<CountriesNameCubit, CountriesNameState>(
          builder: (context, state) {
            if (state is CountriesNameLoaded) {
              return ListView.builder(
                  itemCount: state.countriesName.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CountriesFoodView(
                                    countryName:
                                        state.countriesName[index].strArea!),
                              ),
                            );
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  state.countriesName[index].strArea!,
                                  style: Styles.textStyle16.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 8,
                          thickness: .7,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        )
                      ],
                    );
                  });
            } else if (state is CountriesNameError) {
              return CustomErrorWidget(errMessage: state.errorMessage);
            } else {
              return CustomLoadingIndicator(
                  hight: MediaQuery.of(context).size.height);
            }
          },
        ),
      ),
    );
  }
}
