import 'package:flutter/material.dart';
import 'package:tranme/presentation/theme/theme.dart';
import 'package:tranme/routes.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WScaffold(
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Done'),
        onPressed: () {
          Navigator.of(
            context,
          ).pushNamedAndRemoveUntil(Routes.login, (route) => false);
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceL),
        child: Form(
          child: Column(
            children: [
              WHeader1('PROFILE'),
              kVSpaceL,
              kVSpaceL,
              WTextInput(
                hintText: 'David',
                label: 'First name',
                onChanged: (value) {},
              ),
              kVSpaceXS,
              WTextInput(
                hintText: 'Tran',
                label: 'Last name',
                onChanged: (value) {},
              ),
              kVSpaceL,
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
              kVSpaceXS,
              GenderSelector(),
              kVSpaceXS,
              BirthDaySelector(),
              kVSpaceXS,
              Row(
                children: [
                  Expanded(child: CitySelector()),
                  kHSpaceL,
                  Expanded(child: CountrySelector()),
                ],
              ),
              kVSpaceS,
              kVSpaceXXL,
              // WSubmitBtn(child: const Text('Done'), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
