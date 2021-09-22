import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tranme/injector.dart' as di;

import 'app.dart';
import 'app_module.dart';
import 'env_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.initializeDependencies(mode: EnvConfig.mode);
  runApp(ModularApp(module: AppModule(), child: MyApp()));
}

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   di.initializeDependencies(mode: EnvConfig.mode);
//   runApp(const MyApp());
// }
