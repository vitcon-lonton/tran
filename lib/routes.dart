import 'package:flutter/material.dart';
import 'package:tranme/presentation/feature/flash/flash_page.dart';
import 'package:tranme/presentation/feature/login/login_page.dart';
import 'package:tranme/presentation/feature/onboard/onboard_page.dart';

class Routes {
  Routes._();

  static const String initRoute = home;

  static const home = '/';
  static const term = '/term';
  static const about = '/about';
  static const policy = '/policy';
  static const login = '/login';
  static const register = '/register';
  static const reset_pw = '/reset_pw';
  static const forgot_pw = '/forgot_pw';
  static const onboard = '/onboard';

  static Route onGenerateRoute(RouteSettings? settings) {
    final args = settings!.arguments;
    Widget page;
    print(args);

    switch (settings.name) {
      case home:
        page = FlashPage();
        break;
      case term:
        page = SignInPage();
        break;
      case about:
        page = SignInPage();
        break;
      case login:
        page = SignInPage();
        break;
      case register:
        page = SignInPage();
        break;
      case reset_pw:
        page = SignInPage();
        break;
      case forgot_pw:
        page = SignInPage();
        break;
      case onboard:
        page = OnboardPage();
        break;

      default:
        page = FlashPage();
        break;
    }

    page = OnboardPage();

    return MaterialPageRoute(builder: (_) => page, settings: settings);
  }
}
