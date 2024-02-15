part of 'meal_details_cubit.dart';

sealed class MealDetailsState extends Equatable {
  const MealDetailsState();

  @override
  List<Object> get props => [];
}

final class MealDetailsInitial extends MealDetailsState {}

final class MealDetailsLoading extends MealDetailsState {}

final class MealDetailsLoaded extends MealDetailsState {
  final MealsModel mealDetails;

  const MealDetailsLoaded({required this.mealDetails});
}

final class MealDetailsError extends MealDetailsState {
  final String errorMessage;

  const MealDetailsError({required this.errorMessage});
}
