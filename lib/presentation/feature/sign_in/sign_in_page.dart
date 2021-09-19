part of 'sign_in.dart';

class SignInPage extends StatelessWidget {
  Widget padding(Widget child) {
    return Padding(
      child: child,
      padding: const EdgeInsets.symmetric(horizontal: kSpaceL),
    );
  }

  login(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.home);
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
                    text: 'SIGN IN with Facebook',
                    onPressed: () => login(context),
                  ),
                  kVSpaceM,
                  WSIIconButton(
                    icon: kIcGoogle,
                    text: 'SIGN IN with Google',
                    onPressed: () => login(context),
                    // icon: Icon(Icons.facebook),
                  ),
                  kVSpaceM,
                  if (Platform.isIOS) ...[
                    WSIIconButton(
                      icon: kIcApple,
                      text: 'SIGN IN with Apple ID',
                      onPressed: () => login(context),
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
