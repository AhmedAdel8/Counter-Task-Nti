import 'package:counter_task_nti/src/Features/Home/view/manger/cubits/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerColor extends StatelessWidget {
  ContainerColor({
    super.key,
    required this.color,
  });
  Color color;

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of(context);
    return GestureDetector(
      onTap: () {
        theme.changeColor(color);
      },
      child: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
