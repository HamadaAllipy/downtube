import 'package:downtube/constants/app_strings.dart';
import 'package:downtube/presentation/layout/app_layout.dart';
import 'package:downtube/presentation/layout/app_layout_2.dart';
import 'package:flutter/material.dart' show MaterialPageRoute, Route, RouteSettings;

class AppRouter{

  static Route? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case appLayout:
        return MaterialPageRoute(builder: (context)=> const AppLayout());
      case appLayout_2:
        return MaterialPageRoute(builder: (context)=> const AppLayout2());
    }
    return null;
  }
}