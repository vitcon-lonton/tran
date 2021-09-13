part of 'sign_in.dart';

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
                    icon: kIcFB,
                    onPressed: () {},
                    text: 'SIGN IN with Facebook',
                  ),
                  kVSpaceM,
                  WSIIconButton(
                    icon: kIcGoogle,
                    onPressed: () {},
                    text: 'SIGN IN with Google',
                    // icon: Icon(Icons.facebook),
                  ),
                  kVSpaceM,
                  if (Platform.isIOS) ...[
                    WSIIconButton(
                      icon: kIcApple,
                      onPressed: () {},
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
