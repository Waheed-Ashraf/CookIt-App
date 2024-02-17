import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'button_state.dart';

class ButtonCubit extends Cubit<int> {
  ButtonCubit() : super(3);
  void changeButton(int index) {
    emit(index);
  }
}
