import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tranme/infrastructure/auth/auth.dart';

import 'env_config.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  final options = EnvConfig.options;
  final dio = Dio()..options = options;
  final authService = AuthService(dio);
  final logger = PrettyDioLogger(
      error: true,
      compact: true,
      maxWidth: 90,
      requestBody: true,
      responseBody: true,
      requestHeader: true,
      responseHeader: true);
  dio.interceptors.add(logger);

  EasyLoading.instance
    ..radius = 10.0
    ..dismissOnTap = false
    ..userInteractions = false
    ..maskType = EasyLoadingMaskType.custom
    ..loadingStyle = EasyLoadingStyle.light
    ..maskColor = Colors.black.withOpacity(0.4)
    ..indicatorWidget = CupertinoActivityIndicator();

  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<AuthService>(() => authService);
  getIt.registerSingleton<EasyLoading>(EasyLoading());

  $initGetIt(getIt, environment: env);
}
