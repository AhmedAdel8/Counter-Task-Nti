part of 'counter_cubit_cubit.dart';

@immutable
sealed class CounterCubitState {}

final class CounterCubitInitial extends CounterCubitState {}

final class CounterUpdate extends CounterCubitState {}

final class CounterUpdate2 extends CounterCubitState {}
