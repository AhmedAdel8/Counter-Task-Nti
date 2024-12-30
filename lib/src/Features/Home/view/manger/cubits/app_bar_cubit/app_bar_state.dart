part of 'app_bar_cubit.dart';

@immutable
sealed class AppBarState {}

final class AppBarInitial extends AppBarState {}

final class AppBarUpdate extends AppBarState {}
