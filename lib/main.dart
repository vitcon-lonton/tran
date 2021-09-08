import 'package:flutter/material.dart';
import 'package:tranme/injector.dart' as di;

import 'app.dart';
import 'env_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.initializeDependencies(mode: EnvConfig.mode);
  runApp(const MyApp());
}
