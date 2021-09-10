import 'package:flutter/material.dart';
import 'package:tranme/routes.dart';

import 'presentation/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: TestForm(),
      // home: VerifyPage(),
      // home: TestPage(),
      title: 'Tran ME',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
      theme: ThemeData.light().copyWith(
        primaryColor: kColorAccentBlue,
        primaryColorLight: kColorAccentBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.light(
            primary: kColorAccentBlue, secondary: kColorAccentBlue),
      ),
    );
  }
}
