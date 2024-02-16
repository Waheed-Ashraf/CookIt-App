import 'package:cook_it_app/Featuers/HomePage/Data/Models/meal_model.dart';
import 'package:cook_it_app/Featuers/HomePage/Data/ViewModel/repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'countries_name_state.dart';

class CountriesNameCubit extends Cubit<CountriesNameState> {
  CountriesNameCubit(this.repo) : super(CountriesNameInitial());
  final Repo repo;

  Future getCountriesNameList() async {
    emit(CountriesNameLoading());
    var result = await repo.getCountriesNames();
    result.fold(
        (failure) => emit(CountriesNameError(errorMessage: failure.errMessage)),
        (countriesName) =>
            emit(CountriesNameLoaded(countriesName: countriesName)));
  }
}
