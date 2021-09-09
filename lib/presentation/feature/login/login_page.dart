import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tranme/presentation/theme/theme.dart';
import 'package:tranme/routes.dart';

import 'login_cubit.dart';
import 'widgets/buttons.dart';
import 'widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kSpaceXL),
          child: Column(
            children: [
              kVSpaceL,
              SafeArea(
                child: Row(
                  children: [const Spacer(), Text('SIGN IN', style: kTitle1)],
                ),
              ),
              kVSpaceL,
              kVSpaceL,
              kVSpaceL,
              BlocProvider(
                child: SignInForm(),
                create: (context) => LoginCubit(),
              ),
              kVSpaceL,
              Separator(),
              kVSpaceL,
              WSIIconButton(
                onPressed: () {},
                text: 'SIGN IN with Facebook',
                icon: Icon(Icons.facebook),
              ),
              kVSpaceM,
              WSIIconButton(
                onPressed: () {},
                text: 'SIGN IN with Google',
                icon: Icon(Icons.facebook),
              ),
              kVSpaceM,
              if (Platform.isIOS) ...[
                WSIIconButton(
                  onPressed: () {},
                  text: 'SIGN IN with Apple ID',
                  icon: Icon(Icons.facebook),
                ),
                kVSpaceS,
              ] else
                ...[],
              InkWell(
                child: Text('Don’t have an account? Sign up now!'),
                onTap: () {
                  Navigator.pushNamed(context, Routes.register);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
