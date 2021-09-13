part of 'settings.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      appBar: AppBar(
        elevation: 0,
        title: Text('Profile'),
        bottom: _Bottom(),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData.fallback(),
        titleTextStyle: kTitleBold.copyWith(fontSize: 18),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner_rounded),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal: kSpaceM,
        ).copyWith(bottom: kSpaceS),
        child: WSubmitBtn(child: Text('Edit Profile'), onPressed: () {}),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceM),
        child: Column(
          children: [
            kVSpaceM,
            UserFitness(),
            kVSpaceL,
            DeviceInfo(),
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(160);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: kBodyRegular.copyWith(color: Colors.black54),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            child: CircleAvatar(
              child: FlutterLogo(size: 70),
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
          Text(
            'David Tran',
            style: kTitleBold.copyWith(fontSize: 18, color: primaryColor),
          ),
          Text('support@3co.network'),
          kVSpaceXXS,
          Text('Maine, California'),
        ],
      ),
    );
  }
}
