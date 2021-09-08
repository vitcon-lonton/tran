import 'package:flutter/material.dart';
import 'package:tranme/routes.dart';

import 'presentation/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
      // theme: ThemeData(primarySwatch: Colors.blue),
      theme: ThemeData(primaryColor: kColorAccentBlue),
    );
  }
}
