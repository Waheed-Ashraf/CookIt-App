part of 'egyption_food_cubit.dart';

sealed class EgyptionFoodState extends Equatable {
  const EgyptionFoodState();

  @override
  List<Object> get props => [];
}

final class EgyptionFoodInitial extends EgyptionFoodState {}

final class EgyptionFoodLoaded extends EgyptionFoodState {
  final List<MealsModel> egyptionMealsList;

  const EgyptionFoodLoaded({required this.egyptionMealsList});
}

final class EgyptionFoodLoading extends EgyptionFoodState {}

final class EgyptionFoodError extends EgyptionFoodState {
  final String errorMessage;

  const EgyptionFoodError({required this.errorMessage});
}
