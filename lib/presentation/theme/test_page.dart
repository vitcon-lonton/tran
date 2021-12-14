part of 'theme.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kSpaceXL),
          child: Column(
            children: [
              kVSpaceM,
              WHeader1('SIGN IN'),
              kVSpaceM,
              WTextInput(
                require: true,
                label: 'Email',
                hintText: 'no-reply@3co.network',
                onChanged: (value) {},
                suffixIcon: Icon(Icons.visibility_off_outlined, size: 18),
                prefixIcon: Icon(Icons.person_outline_outlined, size: 18),
              ),
              kVSpaceM,
              WTextInput(
                obscureText: true,
                label: 'Password',
                hintText: 'Password',
                onChanged: (value) {},
                errorText: 'Password wrong',
                prefixIcon: Icon(Icons.lock, size: 18),
                suffixIcon: Icon(Icons.visibility_off_outlined, size: 18),
                // autocorrect: false,
              ),
              kVSpaceM,
              Row(
                children: [
                  Expanded(
                    child: WTextInput(hintText: '182 cm', label: 'Height (cm)'),
                  ),
                  kHSpaceL,
                  Expanded(
                    child: WTextInput(hintText: '99 kg', label: 'Weight (kg)'),
                  ),
                ],
              ),
              kVSpaceM,
              Row(children: [
                WCheckbox(value: true, onChanged: null),
                Text('Promotion text')
              ]),
              Row(children: [
                WCheckbox(value: false, onChanged: null),
                Text('Promotion text')
              ]),
              kVSpaceM,
              GenderSelector(),
              kVSpaceM,
              BirthDaySelector(),
              kVSpaceM,
              Row(
                children: [
                  Expanded(child: CitySelector()),
                  kHSpaceL,
                  Expanded(child: CountrySelector()),
                ],
              ),
              kVSpaceL,
              WSubmitBtn(child: const Text('Sign in'), onPressed: () {}),
              kVSpaceM,
              kVSpaceM,
              kVSpaceM,
              kVSpaceM,
              kVSpaceM,
              InkWell(
                child: Text('Don’t have an account? Sign up now!'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
