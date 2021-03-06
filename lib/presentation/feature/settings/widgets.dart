part of 'settings.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context, rootNavigator: true);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: kBorderRadius,
        border: Border.fromBorderSide(kBorderSide),
      ),
      child: Column(
        children: [
          OptionTile(
            'Change Password',
            height: 55,
            radius: kBorderRadius.copyWith(
                bottomLeft: Radius.zero, bottomRight: Radius.zero),
            padding: EdgeInsets.only(top: kSpaceXS),
            onPressed: () => nav.pushNamed(Routes.changePW),
          ),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          OptionTile(
            'Add Friend',
            onPressed: () => nav.pushNamed(Routes.addFriendForm),
          ),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          OptionTile(
            'Language',
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('English',
                    style: kCaption2.copyWith(
                        fontSize: 14,
                        color: primaryColor,
                        fontWeight: FontWeight.w400)),
                kHSpaceXXS,
                const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(Icons.arrow_forward_ios_outlined)),
              ],
            ),
          ),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          Container(
            height: 58,
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Log Out',
                style: kBTNTitle.copyWith(color: kColorPrimary, fontSize: 14),
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(12)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PilotSettings extends StatelessWidget {
  const PilotSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context, rootNavigator: true);

    return OptionsView(
      options: [
        OptionTile(
          'Create Wallet',
          height: 55,
          radius: kBorderRadius.copyWith(
              bottomLeft: Radius.zero, bottomRight: Radius.zero),
          padding: EdgeInsets.only(top: kSpaceXS),
          onPressed: () => nav.pushNamed(Routes.createWallet),
        ),
        OptionTile(
          'Transfer Token',
          onPressed: () => nav.pushNamed(Routes.tokenTransfer),
        ),
        OptionTile(
          'Transfer History',
          onPressed: () => nav.pushNamed(Routes.transactionHistory),
        ),
        OptionTile('Shop', onPressed: () => nav.pushNamed(Routes.shop)),
        OptionTile(
          'Send Gift',
          height: 55,
          radius: kBorderRadius.copyWith(
              topLeft: Radius.zero, topRight: Radius.zero),
          padding: EdgeInsets.only(bottom: kSpaceXS),
          onPressed: () => nav.pushNamed(Routes.sendGift),
        ),
      ],
    );
  }
}

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({Key? key}) : super(key: key);

  Widget section(String text, String value,
      {double? height, EdgeInsets? padding, BorderRadius? radius}) {
    return SizedBox(
      height: height ?? 45,
      child: TextButton(
        onPressed: null,
        child: Row(
          children: [
            kHSpaceM,
            Text(text, style: kBodyMedium.copyWith(fontSize: 14)),
            const Spacer(),
            Text(value, style: kBodyRegular.copyWith(color: Colors.black54)),
            kHSpaceM,
          ],
        ),
        style: TextButton.styleFrom(
          fixedSize: Size.fromHeight(44),
          padding: padding ?? EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: radius ?? BorderRadius.zero,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: kBorderRadius,
        border: Border.fromBorderSide(kBorderSide),
      ),
      child: Column(
        children: [
          section(
            'Model No.',
            '242 864 932',
            height: 55,
            radius: kBorderRadius.copyWith(
                bottomLeft: Radius.zero, bottomRight: Radius.zero),
            padding: EdgeInsets.only(top: kSpaceXS),
          ),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          section('Serial No.', '#A3H1234', radius: BorderRadius.zero),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          section('IMEI', 'SF45 2342 5688', radius: BorderRadius.zero),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          section(
            'D.O.B',
            'Mar 1970',
            height: 55,
            radius: kBorderRadius.copyWith(
                topLeft: Radius.zero, topRight: Radius.zero),
            padding: EdgeInsets.only(bottom: kSpaceXS),
          ),
        ],
      ),
    );
  }
}

class UserFitness extends StatelessWidget {
  Widget group(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        kVSpaceXXS,
        Text(
          value,
          style: kBody1.copyWith(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kSpaceS, horizontal: kSpaceS),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: kBorderRadius,
      ),
      child: Row(
        children: [
          Expanded(child: group('My Height', '182 cm')),
          DottedBorder(
            color: Colors.white,
            child: Container(height: 70),
            customPath: (size) {
              return Path()
                ..moveTo(0, 0)
                ..lineTo(0, size.height);
            },
          ),
          Expanded(child: group('My Weight', '99 kg')),
        ],
      ),
    );
  }
}

class UserQRCode extends StatelessWidget {
  const UserQRCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: kBorderRadius,
        border: Border.fromBorderSide(kBorderSide),
      ),
      child: Column(
        children: [
          kVSpaceS,
          ListTile(
            onTap: () {},
            title: Text('David Tran',
                style: kTitleBold.copyWith(fontSize: 18, color: primaryColor)),
            leading: Container(
              width: 55,
              height: 55,
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(child: kIcApp, backgroundColor: Colors.white),
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  kBorderSide.copyWith(color: primaryColor),
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          kVSpaceXS,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DottedBorder(
              color: kColorGrey1,
              child: Container(height: 0),
              customPath: (size) {
                return Path()
                  ..moveTo(0, 0)
                  ..lineTo(size.width, 0);
              },
            ),
          ),
          kVSpaceS,
          kImgScanner,
          Icon(Icons.qr_code_2, size: 200),
          kVSpaceXL,
        ],
      ),
    );
  }
}
