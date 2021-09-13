part of 'wallet.dart';

class WWordInput extends StatelessWidget {
  final void Function(String?)? onChanged;

  const WWordInput({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WTextInput(
      height: 32,
      onChanged: onChanged,
      borderRadius: BorderRadius.all(Radius.circular(6)),
    );
  }
}

class SettingTile extends StatelessWidget {
  final String text;
  final double? height;
  final EdgeInsets? padding;
  final BorderRadius? radius;
  final VoidCallback? onPressed;

  const SettingTile(
    this.text, {
    Key? key,
    this.height,
    this.radius,
    this.padding,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45,
      child: TextButton(
        onPressed: onPressed ?? () {},
        child: Row(
          children: [
            kHSpaceM,
            Text(text, style: kBodyMedium.copyWith(fontSize: 14)),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_outlined, size: 12),
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
}

class UserSettings extends StatelessWidget {
  const UserSettings({Key? key}) : super(key: key);

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
          SettingTile(
            'Change Password',
            height: 55,
            radius: kBorderRadius.copyWith(
                bottomLeft: Radius.zero, bottomRight: Radius.zero),
            padding: EdgeInsets.only(top: kSpaceXS),
          ),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          SettingTile('Add Friend', radius: BorderRadius.zero),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          SettingTile('Language', radius: BorderRadius.zero),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          Container(
            height: 58,
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text('Log Out'),
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: kBorderRadius,
        border: Border.fromBorderSide(kBorderSide),
      ),
      child: Column(
        children: [
          SettingTile(
            'Create Wallet',
            height: 55,
            radius: kBorderRadius.copyWith(
                bottomLeft: Radius.zero, bottomRight: Radius.zero),
            padding: EdgeInsets.only(top: kSpaceXS),
          ),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          SettingTile('Transfer Token', radius: BorderRadius.zero),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          SettingTile('Transfer History', radius: BorderRadius.zero),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          SettingTile('Shop', radius: BorderRadius.zero),
          const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM),
          SettingTile(
            'Send Gift',
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
        borderRadius: kBorderRadius,
        color: Theme.of(context).primaryColor,
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
          kVSpaceM,
          ListTile(
            onTap: () {},
            title: Text('David Tran',
                style: kTitleBold.copyWith(fontSize: 18, color: primaryColor)),
            leading: Container(
              width: 55,
              height: 55,
              padding: EdgeInsets.all(2.0),
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
          ),
          kVSpaceM,
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
          kVSpaceM,
          Icon(Icons.qr_code_2, size: 200),
          kVSpaceXXL,
        ],
      ),
    );
  }
}
