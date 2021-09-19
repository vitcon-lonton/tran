// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tranme/presentation/feature/home/home.dart';

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
  static const flash = '/flash';
  static const onboard = '/onboard';
  static const login = '/login';
  static const register = '/register';
  static const profile = '/profile';
  static const activity = '/activity';
  static const events = '/events';
  static const race = '/race';
  static const raceDetail = '/raceDetail';
  static const news = '/news';
  static const notification = '/notification';
  static const userProfile = '/userProfile';
  static const profileQRCode = '/profileQRCode';
  static const editProfile = '/editProfile';
  static const resetPW = '/resetPW';
  static const changePW = '/changePW';
  static const addFriendForm = '/addFriendForm';
  static const confirmAddFriendForm = '/confirmAddFriendForm';
  static const createWallet = '/wallet/create';
  static const createSeed = '/createSeed';
  static const verifySeed = '/verifySeed';
  static const tokenTransfer = '/tokenTransfer';
  static const transactionHistory = '/transactionHistory';
  static const shop = '/shop';
  static const subscription = '/subscription';
  static const addCard = '/addCard';
  static const scanCard = '/scanCard';
  static const myOrder = '/myOrder';
  static const myCartSubs = '/myCartSubs';
  static const myCartOrder = '/myCartOrder';
  static const sendGift = '/sendGift';
  static const scanQR = '/scanQR';

  static Route onGenerateRoute(RouteSettings? settings) {
    final args = settings!.arguments;
    Widget page;
    print('-- onGenerateRoute(RouteSettings? settings) --ARGS--');
    print(args);

    switch (settings.name) {
      case home:
        page = HomePage();
        break;
      case flash:
        page = FlashPage();
        break;
      case onboard:
        page = OnboardPage();
        break;
      case login:
        page = SignInPage();
        break;
      case register:
        page = SignUpPage();
        break;
      case profile:
        page = ProfilePage();
        break;
      case activity:
        page = ActivityPage();
        break;
      case events:
        page = EventsPage();
        break;
      case race:
        page = RacePage();
        break;
      case raceDetail:
        page = RaceDetailPage();
        break;
      case news:
        page = NewsPage();
        break;
      case notification:
        page = NotificationPage();
        break;
      case userProfile:
        page = UserProfilePage();
        break;
      case profileQRCode:
        page = ProfileQRCodePage();
        break;
      case editProfile:
        page = EditProfilePage();
        break;
      case resetPW:
        page = ResetPWPage();
        break;
      case changePW:
        page = ChangePWPage();
        break;
      case addFriendForm:
        page = AddFriendForm();
        break;
      case confirmAddFriendForm:
        page = ConfirmAddFriendForm();
        break;
      case createWallet:
        page = CreateWalletPage();
        break;
      case createSeed:
        page = CreateSeedPage();
        break;
      case verifySeed:
        page = VerifySeedPage();
        break;
      case tokenTransfer:
        page = TokenTransferPage();
        break;
      case transactionHistory:
        page = TransactionHistoryPage();
        break;
      case shop:
        page = ShopPage();
        break;
      case subscription:
        page = SubscriptionPage();
        break;
      case addCard:
        page = AddCardPage();
        break;
      case scanCard:
        page = ScanCardPage();
        break;
      case myOrder:
        page = MyOrderPage();
        break;
      case myCartSubs:
        page = MyCartSubsPage();
        break;
      case myCartOrder:
        page = MyCartOrderPage();
        break;
      case sendGift:
        page = SendGiftPage();
        break;
      case scanQR:
        page = ScanQRPage();
        break;

      default:
        page = FlashPage();
        break;
    }

    // page = FlashPage();
    // page = ActivityPage();
    // page = EventsPage();
    // page = RacePage();
    // page = RaceDetailPage();
    // page = NewsPage();
    // page = NotificationPage();
    // page = SettingsPage();
    // page = UserProfilePage();
    // page = ProfileQRCodePage();
    // page = EditProfilePage();
    // page = ResetPWPage();
    // page = ChangePWPage();
    // page = AddFriendForm();
    // page = ConfirmAddFriendForm();
    // page = CreateWalletPage();
    // page = CreateSeedPage();
    // page = VerifySeedPage();
    // page = TokenTransferPage();
    // page = TransactionHistoryPage();
    // page = ShopPage();
    // page = SubscriptionPage();
    // page = AddCardPage();
    // page = MyOrderPage();
    // page = HomePage();
    // page = MyCartSubsPage();
    // page = MyCartOrderPage();
    // page = SendGiftPage();

    return MaterialPageRoute(builder: (_) => page, settings: settings);
  }
}
