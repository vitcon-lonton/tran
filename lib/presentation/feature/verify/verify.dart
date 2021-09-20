import 'package:flutter/material.dart';

import 'package:tranme/presentation/theme/theme.dart';
import 'package:tranme/routes.dart';

class VerifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WScaffold(
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Next'),
        onPressed: () => Navigator.of(context).pushNamed(Routes.profile),
      ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Please enter the verification code that ',
                          ),
                          TextSpan(
                            text: 'TRAN ME',
                            style: kBodyBold.copyWith(fontSize: 14),
                          ),
                          const TextSpan(
                              text: ' has sent to your email address.'),
                        ],
                      ),
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
                    kVSpaceS,
                    Text('Didn’t receive verification code?'),
                    Text('Resend new code.'),
                    kVSpaceXL,
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text:
                                'I acknowledge that I have read, and do hereby accept the terms and conditions provided by ',
                          ),
                          TextSpan(
                            text: 'TRAN ME',
                            style: kBodyBold.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
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
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: kSpaceL),
              //   child: WSubmitBtn(child: const Text('Next'), onPressed: () {}),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
