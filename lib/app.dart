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
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData.fallback(),
          titleTextStyle: kTitleBold.copyWith(fontSize: 18),
        ),
        colorScheme:
            ColorScheme.light(primary: kColorPrimary, secondary: kColorPrimary),
      ),
    );
  }
}
