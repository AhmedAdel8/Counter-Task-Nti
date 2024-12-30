import 'package:counter_task_nti/src/Features/Home/view/manger/cubits/app_bar_cubit/app_bar_cubit.dart';
import 'package:counter_task_nti/src/Features/Home/view/manger/cubits/counter_cubit/counter_cubit_cubit.dart';
import 'package:counter_task_nti/src/Features/Home/view/manger/cubits/theme_cubit/theme_cubit.dart';
import 'package:counter_task_nti/src/Features/Home/view/views/widgets/circle_avatar_counter.dart';
import 'package:counter_task_nti/src/Features/Home/view/views/widgets/container_colors.dart';
import 'package:counter_task_nti/src/Features/Home/view/views/widgets/drawer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocBuilder<AppBarCubit, AppBarState>(
        builder: (context, state) {
          AppBarCubit appBarCubit = BlocProvider.of(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(appBarCubit.name),
            ),
            drawer: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Drawer(
                backgroundColor: Colors.transparent,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(
                        "assets/images/Y61Uro8.jpg",
                      ),
                    ),
                    DrawerCard(
                      text: "سبحان الله",
                    ),
                    DrawerCard(
                      text: "الحمد لله",
                    ),
                    DrawerCard(
                      text: "لا اله الا الله",
                    ),
                    DrawerCard(
                      text: "الله اكبر",
                    ),
                    DrawerCard(
                      text: "لا حول ولا قوة الا بالله",
                    ),
                  ],
                ),
              ),
            ),
            body: BlocBuilder<CounterCubitCubit, CounterCubitState>(
              builder: (context, state) {
                CounterCubitCubit counter = BlocProvider.of(context);
                return BlocConsumer<ThemeCubit, ThemeState>(
                  listener: (context, state) {
                    if (state is ThemeUpdate) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'تم التحديث بنجاح',
                          ),
                          backgroundColor: Colors.deepPurpleAccent,
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    ThemeCubit theme = BlocProvider.of(context);
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/19.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 30,
                          right: 30,
                          child: Container(
                            width: 190,
                            height: 190,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.color,
                              // border: Border.all(color: Colors.blue, width: 2),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '${counter.x}',
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 240,
                          left: 5,
                          right: 5,
                          child: Row(
                            children: [
                              CircleAvatarCounter(
                                onPressed: () {
                                  counter.reset();
                                },
                                icon: Icon(
                                  size: 37,
                                  Icons.restart_alt_outlined,
                                  color: Colors.blue,
                                ),
                              ),
                              Spacer(),
                              CircleAvatarCounter(
                                onPressed: () {
                                  counter.increment();
                                },
                                icon: Icon(
                                  size: 37,
                                  Icons.fingerprint,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 10,
                          right: 10,
                          bottom: 95,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ContainerColor(
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ContainerColor(
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ContainerColor(
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ContainerColor(
                                color: Colors.deepPurple,
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
