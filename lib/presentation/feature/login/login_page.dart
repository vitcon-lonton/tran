import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tranme/presentation/theme/theme.dart';

import 'login_cubit.dart';
import 'widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Background(
        child: BlocProvider(
          child: SignInForm(),
          create: (context) => LoginCubit(),
        ),
      ),
    );
  }
}
