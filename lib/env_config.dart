import 'package:dio/dio.dart';

enum Mode { dev, stag, prod }

class EnvConfig {
  static const APP_MODE =
      String.fromEnvironment('APP_MODE', defaultValue: 'development');
  static const APP_NAME = String.fromEnvironment('APP_NAME');
  static const APP_SUFFIX = String.fromEnvironment('APP_SUFFIX');

  static Mode get mode {
    if (APP_MODE == 'staging') return Mode.stag;
    if (APP_MODE == 'production') return Mode.prod;
    return Mode.dev;
  }

  static String get DOMAIN {
    return 'http://ec2-18-223-3-103.us-east-2.compute.amazonaws.com:4242/api/';
  }

  static BaseOptions get options {
    return BaseOptions(
        connectTimeout: 10000, sendTimeout: 10000, receiveTimeout: 10000);
  }
}
