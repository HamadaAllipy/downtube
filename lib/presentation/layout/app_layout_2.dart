import 'package:downtube/logic/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppLayout2 extends StatelessWidget {
  const AppLayout2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit appCubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: appCubit.pages[appCubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              appCubit.changeBottomNav(value);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,),
                label: 'Home',
                activeIcon: Icon(Icons.home,),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore,),
                label: 'explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add,),
                label: 'add',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions,),
                label: 'subscriptions',
              ),
            ],
            currentIndex: appCubit.currentIndex,
          ),
        );
      },
    );
  }
}
