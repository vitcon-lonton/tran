import 'package:flutter/material.dart';

import 'package:tranme/injector.dart' as di;
import 'package:tranme/presentation/feature/login/login_page.dart';

import 'env_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.initializeDependencies(mode: EnvConfig.mode);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
