import 'package:counter_task_nti/src/Features/Home/view/manger/cubits/app_bar_cubit/app_bar_cubit.dart';
import 'package:counter_task_nti/src/Features/Home/view/manger/cubits/counter_cubit/counter_cubit_cubit.dart';
import 'package:counter_task_nti/src/Features/Home/view/manger/cubits/theme_cubit/theme_cubit.dart';
import 'package:counter_task_nti/src/Features/Home/view/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterCubitCubit()),
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => AppBarCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //iconTheme: const IconThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.deepPurpleAccent,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
