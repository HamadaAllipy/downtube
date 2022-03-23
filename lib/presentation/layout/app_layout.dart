import 'package:downtube/logic/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit appCubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: appCubit.pages
                .asMap()
                .map((i, screen) => MapEntry(
                    i,
                    Offstage(
                      offstage: appCubit.currentIndex != i,
                      child: screen,
                    )))
                .values
                .toList(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
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
                icon: Icon(Icons.explore_outlined,),
                label: 'Explore',
                activeIcon: Icon(Icons.explore,),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_outlined,),
                label: 'Add',
                activeIcon: Icon(Icons.add_circle,),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined,),
                label: 'Subscriptions',
                activeIcon: Icon(Icons.subscriptions,),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined,),
                label: 'Library',
                activeIcon: Icon(Icons.video_library,),
              ),
            ],
            currentIndex: appCubit.currentIndex,
          ),
        );
      },
    );
  }
}
