part of 'settings.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      appBar: AppBar(
        title: Text('Profile'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: DefaultTextStyle(
            style: kBodyRegular.copyWith(color: Colors.black54),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    child: FlutterLogo(),
                    backgroundColor: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                      kBorderSide.copyWith(color: primaryColor),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                kVSpaceXS,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt, color: primaryColor),
                    kHSpaceXS,
                    Text(
                      'Upload photo',
                      style: kBodyMedium.copyWith(
                          fontSize: 16, color: primaryColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceL),
        child: Form(
          child: Column(
            children: [
              kVSpaceM,
              Row(
                children: [
                  Expanded(
                    child: WTextInput(
                      hintText: 'David',
                      label: 'First name',
                      onChanged: (value) {},
                    ),
                  ),
                  kHSpaceL,
                  Expanded(
                    child: WTextInput(
                      hintText: 'Tran',
                      label: 'Last name',
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              kVSpaceXS,
              MailInput(require: false),
              kVSpaceXS,
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
              Row(
                children: [
                  Expanded(child: BirthDaySelector()),
                  kHSpaceL,
                  Expanded(child: GenderSelector()),
                ],
              ),
              kVSpaceXS,
              Row(
                children: [
                  Expanded(child: CitySelector()),
                  kHSpaceL,
                  Expanded(child: CountrySelector()),
                ],
              ),
              kVSpaceXS,
              WTextInput(
                label: 'IMEI',
                initialValue: '1236hjfdgh67ycc565767887',
                onChanged: (value) {},
              ),
              kVSpaceXS,
              WTextInput(
                label: 'Serial number',
                initialValue: 'abcd123ftg456THY667',
                onChanged: (value) {},
              ),
              kVSpaceXXL,
              WSubmitBtn(
                child: const Text('Save'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              kVSpaceXL,
            ],
          ),
        ),
      ),
    );
  }
}
