import 'package:downtube/constants/app_strings.dart';
import 'package:downtube/helper/app_bloc_observer.dart';
import 'package:downtube/logic/app_cubit.dart';
import 'package:downtube/router/app_router.dart';
import 'package:downtube/themes/dark_theme.dart';
import 'package:downtube/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(
        () => runApp(const MyApp()),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appName,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.dark,
        initialRoute: appLayout,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
