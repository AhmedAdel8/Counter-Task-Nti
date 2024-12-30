import 'package:counter_task_nti/src/Features/Home/view/manger/cubits/app_bar_cubit/app_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerCard extends StatelessWidget {
  DrawerCard({
    required this.text,
    super.key,
  });
  String text;

  @override
  Widget build(BuildContext context) {
    AppBarCubit appBarCubit = BlocProvider.of(context);

    return GestureDetector(
      onTap: () {
        appBarCubit.changeName(text);
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
