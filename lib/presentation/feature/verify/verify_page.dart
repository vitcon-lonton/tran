import 'package:flutter/material.dart';

import 'package:tranme/presentation/theme/theme.dart';

class VerifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Padding(
                child: WHeader1('VERIFY'),
                padding: EdgeInsets.only(right: kSpaceL),
              ),
              kVSpaceL,
              kVSpaceL,
              kVSpaceL,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSpaceL),
                child: Column(
                  children: [
                    const Text(
                      'Please enter the verification code that TRAN ME has sent to your email address.',
                    ),
                    kVSpaceXS,
                    WTextInput(
                      require: true,
                      obscureText: true,
                      label: 'Verifying code',
                      hintText: 'Verifying code',
                      prefixIcon: Icon(Icons.enhanced_encryption, size: 18),
                      suffixIcon: Icon(Icons.visibility_off_outlined, size: 18),
                      onChanged: (value) {},
                    ),
                    kVSpaceXL,
                    const Text(
                      'I acknowledge that I have read, and do hereby accept the terms and conditions provided by TRAN ME.',
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  kHSpaceS,
                  WCheckbox(value: true),
                  const Text('Terms and conditions'),
                ],
              ),
              kVSpaceL,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSpaceL),
                child: WSubmitBtn(child: const Text('Next'), onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
