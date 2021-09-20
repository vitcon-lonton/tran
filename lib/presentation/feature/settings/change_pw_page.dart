part of 'settings.dart';

class ChangePWPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WScaffold.gradient(
      appBar: AppBar(title: Text('Change Password')),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceXL),
        child: Form(
          child: Column(
            children: [
              PasswordInput(require: false),
              kVSpaceS,
              WTextInput(
                obscureText: true,
                label: 'New password',
                prefixIcon: Icon(Icons.enhanced_encryption, size: 18),
                suffixIcon: Icon(Icons.visibility_off_outlined, size: 18),
                onChanged: (value) {},
              ),
              kVSpaceS,
              WTextInput(
                obscureText: true,
                label: 'Confirm password',
                prefixIcon: Icon(Icons.enhanced_encryption, size: 18),
                suffixIcon: Icon(Icons.visibility_off_outlined, size: 18),
                onChanged: (value) {},
              ),
              kVSpaceL,
              Container(
                padding: EdgeInsets.symmetric(horizontal: kSpaceXXL),
                child: WSubmitBtn(
                  child: const Text('Save'),
                  radius: BorderRadius.all(Radius.circular(6)),
                  onPressed: () => Navigator.of(context).pop(),
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
