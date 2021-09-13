part of 'settings.dart';

class ResetPWPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG.gradient(
      appBar: AppBar(title: Text('Reset Password')),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceXL),
        child: Form(
          child: Column(
            children: [
              Text(
                'Enter the email address associated with your account and we’ll send an email with instructions to reset your password. ',
              ),
              kVSpaceM,
              MailInput(require: false),
              kVSpaceXXL,
              kVSpaceL,
              Container(
                padding: EdgeInsets.symmetric(horizontal: kSpaceXXL),
                child: WSubmitBtn(
                  child: const Text('Reset'),
                  radius: BorderRadius.all(Radius.circular(6)),
                  onPressed: () {},
                ),
              ),
              kVSpaceXL,
            ],
          ),
        ),
      ),
    );
  }
}
