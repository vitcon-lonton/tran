import 'package:flutter_modular/flutter_modular.dart';
import 'package:tranme/presentation/feature/flash/flash.dart';
import 'package:tranme/presentation/feature/home/home.dart';
import 'package:tranme/presentation/feature/notification/notification.dart';
import 'package:tranme/presentation/feature/onboard/onboard.dart';
import 'package:tranme/presentation/feature/settings/settings.dart';
import 'package:tranme/presentation/feature/sign_in/sign_in.dart';
import 'package:tranme/presentation/feature/sign_up/sign_up.dart';
import 'package:tranme/presentation/feature/wallet/wallet.dart';

import 'presentation/feature/verify/verify.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
    ChildRoute('/flash', child: (_, args) => FlashPage()),
    ChildRoute('/onboard', child: (_, args) => OnboardPage()),
    ChildRoute('/login', child: (_, args) => SignInPage()),
    ChildRoute('/register', child: (_, args) => SignUpPage()),
    ChildRoute('/verify', child: (_, args) => VerifyPage()),
    ChildRoute('/notification', child: (_, args) => NotificationPage()),
    ModuleRoute('/user', module: UserModule())
  ];
}

class UserModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute('/', child: (_, args) => UserProfilePage()),
      ChildRoute('/qr_code', child: (_, args) => UserQRCode()),
      ChildRoute('/edit', child: (_, args) => EditProfilePage()),
    ];
  }
}
