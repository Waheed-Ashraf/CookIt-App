part of 'filter_cubit.dart';

sealed class FilterState extends Equatable {
  const FilterState();

  @override
  List<Object> get props => [];
}

final class FilterInitial extends FilterState {}

final class FilterMealName extends FilterState {
  Color backgrounColor = Colors.yellow;
}

final class FilterMealCategory extends FilterState {
  Color backgrounColor = Colors.yellow;
}

final class FilterMealIngredient extends FilterState {
  Color backgrounColor = Colors.yellow;
}
