import 'package:flutter/material.dart';
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
      onGenerateRoute: Routes.onGenerateRoute,
      theme: ThemeData(
        fontFamily: kFontName,
        tabBarTheme: kTabBarTheme,
        // brightness: Brightness.light,
        dividerColor: kColorGrey3,
        primaryColor: kColorAccentBlue,
        primaryColorLight: kColorAccentBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(),
        colorScheme:
            ColorScheme.light(primary: kColorPrimary, secondary: kColorPrimary),
      ),
    );
  }
}
