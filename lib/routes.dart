// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tranme/presentation/feature/events/events.dart';
import 'package:tranme/presentation/feature/flash/flash_page.dart';
import 'package:tranme/presentation/feature/sign_in/sign_in_page.dart';
import 'package:tranme/presentation/feature/onboard/onboard_page.dart';
import 'package:tranme/presentation/feature/sign_up/sign_up_page.dart';
import 'package:tranme/presentation/feature/verify/verify_page.dart';

import 'presentation/feature/activity/activity.dart';
import 'presentation/feature/profile/profile_page.dart';

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
  static const profile = '/profile';

  static Route onGenerateRoute(RouteSettings? settings) {
    final args = settings!.arguments;
    Widget page;
    print('-- onGenerateRoute(RouteSettings? settings) --ARGS--');
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
        page = SignUpPage();
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
      case profile:
        page = ProfilePage();
        break;

      default:
        page = FlashPage();
        break;
    }

    page = ActivityPage();
    page = EventsPage();

    return MaterialPageRoute(builder: (_) => page, settings: settings);
  }
}
