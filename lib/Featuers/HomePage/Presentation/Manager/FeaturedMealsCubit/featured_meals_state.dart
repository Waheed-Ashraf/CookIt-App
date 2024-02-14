part of 'featured_meals_cubit.dart';

@immutable
sealed class FeaturedMealsState {}

final class FeaturedMealsInitial extends FeaturedMealsState {}

final class FeaturedMealsLoaded extends FeaturedMealsState {
  final List<MealsModel> featuredMealsList;

  FeaturedMealsLoaded({required this.featuredMealsList});
}

final class FeaturedMealsLoading extends FeaturedMealsState {}

final class FeaturedMealsError extends FeaturedMealsState {
  final String errorMessage;

  FeaturedMealsError({required this.errorMessage});
}
