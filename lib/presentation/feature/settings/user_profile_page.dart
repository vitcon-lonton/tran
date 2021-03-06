part of 'settings.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      appBar: AppBar(
        bottom: _Bottom(),
        title: Text('Profile'),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: kIcQR,
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.profileQRCode);
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNav.submit(
        child: Text('Edit Profile'),
        onPressed: () => Navigator.of(context).pushNamed(Routes.editProfile),
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
            child: CircleAvatar(child: kIcApp, backgroundColor: Colors.white),
            decoration: BoxDecoration(
              border: Border.fromBorderSide(
                kBorderSide.copyWith(color: primaryColor, width: 2),
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
