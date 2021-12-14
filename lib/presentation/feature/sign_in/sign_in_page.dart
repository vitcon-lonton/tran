part of 'sign_in.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
    return WScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              child: WHeader1('SIGN IN'),
              padding: EdgeInsets.only(right: kSpaceL),
            ),
            kVSpaceL,
            kVSpaceL,
            BlocProvider(
              child: SignInForm(),
              create: (_) => getIt<SignInCubit>(),
            ),
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
              child: Text('Don’t have an account? Sign up now!',
                  style: TextStyle(color: kColorPrimary)),
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
