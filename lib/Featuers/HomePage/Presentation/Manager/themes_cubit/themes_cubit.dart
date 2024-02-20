import 'package:cook_it_app/Core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'themes_state.dart';

class ThemesCubit extends Cubit<ThemesState> {
  ThemesCubit() : super(ThemesState(theme: lightMood));

  void toggleTheme() {
    if (state.theme == lightMood) {
      final updateState = ThemesState(theme: darkMood);
      emit(updateState);
    } else {
      final updateState = ThemesState(theme: lightMood);
      emit(updateState);
    }
  }
}
