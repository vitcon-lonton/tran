// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'presentation/feature/activity/activity.dart';
import 'presentation/feature/events/events.dart';
import 'presentation/feature/flash/flash.dart';
import 'presentation/feature/news/news.dart';
import 'presentation/feature/notification/notification.dart';
import 'presentation/feature/onboard/onboard.dart';
import 'presentation/feature/profile/profile.dart';
import 'presentation/feature/race/race.dart';
import 'presentation/feature/settings/settings.dart';
import 'presentation/feature/shop/shop.dart';
import 'presentation/feature/sign_in/sign_in.dart';
import 'presentation/feature/sign_up/sign_up.dart';
import 'presentation/feature/verify/verify.dart';
import 'presentation/feature/wallet/wallet.dart';

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
    page = RacePage();
    page = RaceDetailPage();
    page = NewsPage();
    page = NotificationPage();
    page = SettingsPage();
    page = UserProfilePage();
    page = ProfileQRCodePage();
    page = EditProfilePage();
    page = ResetPWPage();
    page = ChangePWPage();
    page = AddFriendForm();
    page = ConfirmAddFriendForm();
    page = CreateWalletPage();
    page = CreateSeedPage();
    page = VerifySeedPage();
    page = TokenTransferPage();
    page = TransactionHistoryPage();
    page = ShopPage();
    page = ShopSubscriptionPage();
    page = AddCardPage();

    return MaterialPageRoute(builder: (_) => page, settings: settings);
  }
}
