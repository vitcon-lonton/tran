import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tranme/presentation/theme/theme.dart';

import 'login/login_cubit.dart';
import 'login/widgets/sign_in_form.dart';

class TestForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      body: SingleChildScrollView(
        child: Column(
          children: [
            kVSpaceL,
            SafeArea(
              child: Row(
                children: [
                  const Spacer(),
                  Text('SIGN IN', style: kTitle1),
                  kHSpaceL,
                ],
              ),
            ),
            kVSpaceL,
            kVSpaceL,
            // kVSpaceS,
            // BlocProvider(
            //   child: SignUpForm(),
            //   create: (context) => LoginCubit(),
            // ),
          ],
        ),
      ),
    );
  }
}
            // height: screenHeight - (viewPadding.top + viewPadding.bottom),
