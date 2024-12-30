import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  Color color = Colors.white;

  void changeColor(Color newColor) {
    color = newColor;
    emit(ThemeUpdate());
  }
}