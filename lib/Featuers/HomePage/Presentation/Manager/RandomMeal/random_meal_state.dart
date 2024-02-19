part of 'random_meal_cubit.dart';

sealed class RandomMealState extends Equatable {
  const RandomMealState();

  @override
  List<Object> get props => [];
}

final class RandomMealInitial extends RandomMealState {}

final class RandomMealLoading extends RandomMealState {}

final class RandomMealLoaded extends RandomMealState {
  final MealsModel randomMeal;

  const RandomMealLoaded({required this.randomMeal});
}

final class RandomMealError extends RandomMealState {
  final String errorMessage;

  const RandomMealError({required this.errorMessage});
}
