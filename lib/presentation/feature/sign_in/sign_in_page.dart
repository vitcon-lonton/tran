import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:tranme/presentation/theme/theme.dart';
import 'package:tranme/routes.dart';

import 'sign_in_cubit.dart';
import 'widgets/buttons.dart';
import 'widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  Widget padding(Widget child) {
    return Padding(
      child: child,
      padding: const EdgeInsets.symmetric(horizontal: kSpaceL),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              child: WHeader1('SIGN IN'),
              padding: EdgeInsets.only(right: kSpaceL),
            ),
            kVSpaceL,
            kVSpaceL,
            BlocProvider(create: (_) => SignInCubit(), child: SignInForm()),
            kVSpaceL,
            padding(
              Column(
                children: [
                  Separator(),
                  kVSpaceL,
                  WSIIconButton(
                    onPressed: () {},
                    icon: kIconFB,
                    text: 'SIGN IN with Facebook',
                  ),
                  kVSpaceM,
                  WSIIconButton(
                    onPressed: () {},
                    icon: kIconGoogle,
                    text: 'SIGN IN with Google',
                    // icon: Icon(Icons.facebook),
                  ),
                  kVSpaceM,
                  if (Platform.isIOS) ...[
                    WSIIconButton(
                      onPressed: () {},
                      icon: kIconApple,
                      text: 'SIGN IN with Apple ID',
                    ),
                    kVSpaceS,
                  ] else
                    ...[],
                ],
              ),
            ),
            InkWell(
              child: Text('Don’t have an account? Sign up now!'),
              onTap: () {
                Navigator.pushNamed(context, Routes.register);
              },
            ),
          ],
        ),
      ),
    );
  }
}
