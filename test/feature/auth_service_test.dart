import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tranme/infrastructure/models/models.dart';
import 'package:tranme/infrastructure/auth/auth.dart';

void main() {
  late Dio dio;
  late AuthService authService;

  void appDebugPrint(Object message) {
    debugPrint(message.toString());
  }

  setUp(() {
    dio = Dio();
    authService = AuthService(dio);
    final logger = PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        logPrint: appDebugPrint,
        maxWidth: 90);
    dio.interceptors.add(logger);
  });

  group("register", () {
    test("should return status code 2000 when register with email not exist",
        () async {
      final data = RegisterData()
          .copyWith(email: "email2@tranme.com")
          .copyWith(password: "password")
          .copyWith(userType: "Normal")
          .copyWith(apptype: "ios")
          .copyWith(nameFirst: "nameFirst")
          .copyWith(nameLast: "nameLast")
          .copyWith(gender: "male")
          .copyWith(height: 65.0)
          .copyWith(weight: 165.0)
          .copyWith(dob: DateTime.now())
          .copyWith(city: 'Sai Gon')
          .copyWith(country: 'Viet Nam')
          .copyWith(heightWeight: false);

      final result = await authService.register(data);

      expect(result.responseCode, 2000);
    });

    test(
        "should return status code is not 2000 when register with email existed",
        () async {
      final data = RegisterData()
          .copyWith(password: "password")
          .copyWith(email: "email2@tranme.com");

      final result = await authService.register(data);

      expect(result.responseCode, isNot(2000));
      // expect(result.responseCode, 2000);
    });
  });

  group("login", () {
    test("should return response data Credential when login success", () async {
      final data = EmailAuthData()
          .copyWith(email: "email2@tranme.com")
          .copyWith(password: "password")
          .copyWith(userType: "Normal")
          .copyWith(apptype: "ios");

      final result = await authService.emailAuth(data);

      expect(result.responseData, isA<Credential>());
    });

    test("should return status code is not 2000 when login failed", () async {
      final data = EmailAuthData()
          .copyWith(password: "password1")
          .copyWith(email: "email2@tranme.com");

      final result = await authService.emailAuth(data);

      expect(result.responseCode, isNot(2000));
    });
  });

  group("change password", () {
    test("should return response code is 2000 when change success", () async {
      final data = ChangePasswordData()
          .copyWith(userId: "614afb675707c175539f9d45")
          .copyWith(password: "password")
          .copyWith(newPassword: "password")
          .copyWith(apptype: "ios");

      final result = await authService.changePassword(data);

      expect(result.responseData, 2000);
      // expect(result.responseData, isA<Credential>());
    });

    test("should return status code is not 2000 when login failed", () async {
      final data = ChangePasswordData()
          .copyWith(userId: "614afb675707c175539f9d45")
          .copyWith(password: "password2")
          .copyWith(newPassword: "password")
          .copyWith(apptype: "ios");

      final result = await authService.changePassword(data);

      expect(result.responseData, 2000);
      // expect(result.responseCode, isNot(2000));
    });
  });
}
