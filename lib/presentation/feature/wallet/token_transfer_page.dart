part of 'wallet.dart';

class TokenTransferPage extends StatelessWidget {
  Widget button(String title, String text, Widget icon) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: kBorderRadius,
          border: Border.fromBorderSide(
            kBorderSide.copyWith(color: primaryColor),
          ),
        ),
        child: IconTheme(
          data: IconThemeData(size: 24, color: primaryColor),
          child: Column(
            children: [
              kVSpaceS,
              Text(title, style: TextStyle(color: primaryColor)),
              kVSpaceS,
              icon,
              kVSpaceS,
              Text(text, style: TextStyle()),
              kVSpaceS,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      appBar: AppBar(title: Text('Token Transfer')),
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Confirm'),
        onPressed: () => Navigator.of(context).pop(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceL),
        child: Form(
          child: Column(
            children: [
              kVSpaceXS,
              kVSpaceXS,
              kVSpaceM,
              Row(
                children: [
                  button('Total Distance', '21.23 km', kIcDistance),
                  const Spacer(),
                  button('Total Token', '9.6784', kIcTokenMoney),
                ],
              ),
              kVSpaceXS,
              kVSpaceXXL,
              Text(
                'How many tokens do you want to transfer to the Redbelly blockchain to convert to    ?',
                textAlign: TextAlign.center,
                style: kBodyMedium.copyWith(color: primaryColor, fontSize: 16),
              ),
              kVSpaceXXL,
              WTokenInput(),
              kVSpaceXXL,
            ],
          ),
        ),
      ),
    );
  }
}
