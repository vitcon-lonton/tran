part of 'settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabHeader(
        bottom: _ProfileTile(),
        title: Text('Settings'),
        backgroundColor: kColorGrey7,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceM),
        child: Column(
          children: [
            kVSpaceL,
            PilotSettings(),
            kVSpaceS,
            UserSettings(),
            kVSpaceXXL,
          ],
        ),
      ),
    );
  }
}

class _ProfileTile extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () => Navigator.of(
          context,
          rootNavigator: true,
        ).pushNamed(Routes.userProfile),
        title: Text(
          'David Tran',
          style: kTitleBold.copyWith(fontSize: 18, color: primaryColor),
        ),
        subtitle: Text('support@3co.network'),
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
        trailing: Icon(Icons.chevron_right_outlined, color: primaryColor),
      ),
    );
  }
}
