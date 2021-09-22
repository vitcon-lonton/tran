import 'package:dio/dio.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'env_config.dart';

final injector = GetIt.instance;
void initializeDependencies({required Mode mode}) {
  _initNetWork(mode: mode);
  _initLocalDB();
  _initLogger();
}

void _initNetWork({required Mode mode}) {
  // ignore: unused_local_variable
  final baseUrl = EnvConfig.DOMAIN;
  final options = EnvConfig.options;
  final dio = Dio()..options = options;

  injector.registerLazySingleton<Dio>(() => dio);
}

void _initLogger() {
  final logger = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      compact: true,
      maxWidth: 90);
  injector<Dio>().interceptors..add(logger);
}

void _initLocalDB() {
  // final storage = FlutterSecureStorage();
  // injector.registerLazySingleton<FlutterSecureStorage>(() => storage);
}
// injector.registerSingleton<NetWorkMode>(NetWorkMode(mode: buildMode));
// injector.registerSingleton<CustomInterceptors>(CustomInterceptors());
// injector.registerSingleton<Dio>(Dio(BaseOptions(
//   baseUrl: injector<NetWorkMode>().baseUrl,
//   connectTimeout: injector<NetWorkMode>().connectTimeout,
//   receiveTimeout: injector<NetWorkMode>().receiveTimeout,
// ))
//   ..interceptors.add(injector<CustomInterceptors>()));

// injector<AppDB>().initAppDB().then((_) => {
//       injector.registerSingleton<AppUserDao>(
//           injector<AppDB>().database.appUserDao)
//     });