import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_cubit_state.dart';

class CounterCubitCubit extends Cubit<CounterCubitState> {
  CounterCubitCubit() : super(CounterCubitInitial());

  int x = 0;
  void increment() {
    x++;
    emit(CounterUpdate());
  }

  void reset() {
    x = 0;
    emit(CounterUpdate2());
  }
}
