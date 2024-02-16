part of 'countries_name_cubit.dart';

sealed class CountriesNameState extends Equatable {
  const CountriesNameState();

  @override
  List<Object> get props => [];
}

final class CountriesNameInitial extends CountriesNameState {}

final class CountriesNameLoaded extends CountriesNameState {
  final List<MealsModel> countriesName;

  const CountriesNameLoaded({required this.countriesName});
}

final class CountriesNameError extends CountriesNameState {
  final String errorMessage;

  const CountriesNameError({required this.errorMessage});
}

final class CountriesNameLoading extends CountriesNameState {}
