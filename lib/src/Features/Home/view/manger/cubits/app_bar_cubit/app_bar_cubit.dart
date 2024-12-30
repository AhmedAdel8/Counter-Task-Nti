import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_bar_state.dart';

class AppBarCubit extends Cubit<AppBarState> {
  AppBarCubit() : super(AppBarInitial());
  String name = "لا اله الا الله";
  void changeName(String text) {
    name = text;
    emit(AppBarUpdate());
  }
}
