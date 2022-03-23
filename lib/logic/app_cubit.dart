import 'package:downtube/presentation/pages/add_page.dart';
import 'package:downtube/presentation/pages/explore_page.dart';
import 'package:downtube/presentation/pages/home_page.dart';
import 'package:downtube/presentation/pages/library_page.dart';
import 'package:downtube/presentation/pages/subscriptions_page.dart';
import 'package:flutter/material.dart' show BuildContext, Widget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  int currentIndex = 0 ;
  List<Widget> pages = const [
    HomePage(),
    ExplorePage(),
    AddPage(),
    SubscriptionsPage(),
    LibraryPage(),
  ];


  AppCubit() : super(AppInitialState());

  static AppCubit get(BuildContext context) => BlocProvider.of(context);


  void changeBottomNav(int value){
    currentIndex = value;
    emit(ChangeBottomState());
  }
}
