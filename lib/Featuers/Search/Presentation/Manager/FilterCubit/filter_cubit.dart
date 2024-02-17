import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  void filterSwicher(var stateHolder) {
    switch (stateHolder) {
      case const (FilterMealName):
        {
          emit(FilterMealName());
        }
        break;
      case const (FilterMealCategory):
        {
          emit(FilterMealCategory());
        }
        break;
      case const (FilterMealIngredient):
        {
          emit(FilterMealIngredient());
        }
        break;
      default:
        {
          emit(FilterMealName());
        }
    }
  }
}
