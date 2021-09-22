import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tranme/routes.dart';

import 'presentation/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tran ME',
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initRoute,
      onGenerateRoute: Routes.onGenerateRoute,
      theme: ThemeData(
        fontFamily: kFontName,
        tabBarTheme: kTabBarTheme,
        // brightness: Brightness.light,
        dividerColor: kColorGrey3,
        primaryColor: kColorAccentBlue,
        primaryColorLight: kColorAccentBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // textTheme: TextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(elevation: MaterialStateProperty.all<double>(0)),
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          // toolbarHeight: 70,
          backgroundColor: Colors.transparent,
          titleTextStyle: kTitleBold.copyWith(fontSize: 18),
          iconTheme: IconThemeData.fallback().copyWith(color: Colors.black54),
        ),
        colorScheme:
            ColorScheme.light(primary: kColorPrimary, secondary: kColorPrimary),
      ),
    );
  }
}
