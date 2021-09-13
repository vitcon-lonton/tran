import 'package:flutter/material.dart';
import 'package:tranme/presentation/theme/theme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceL),
        child: Form(
          child: Column(
            children: [
              WHeader1('SIGN UP'),
              kVSpaceS,
              kVSpaceL,
              kVSpaceL,
              MailInput(),
              kVSpaceXS,
              PasswordInput(),
              kVSpaceXS,
              WTextInput(
                require: true,
                obscureText: true,
                // autocorrect: false,
                label: 'Confirm password',
                hintText: 'Confirm password',
                errorText: 'Password wrong',
                prefixIcon: Icon(Icons.enhanced_encryption, size: 18),
                suffixIcon: Icon(Icons.visibility_off_outlined, size: 18),
                onChanged: (value) {},
              ),
              kVSpaceL,
              WSubmitBtn(child: const Text('Continue'), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
