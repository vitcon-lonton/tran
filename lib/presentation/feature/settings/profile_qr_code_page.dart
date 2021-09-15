part of 'settings.dart';

class ProfileQRCodePage extends StatelessWidget {
  const ProfileQRCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text('QR Code'),
        titleTextStyle: AppBarTheme.of(
          context,
        ).titleTextStyle!.copyWith(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceM),
        child: Column(
          children: [
            kVSpaceM,
            UserQRCode(),
            kVSpaceL,
            Container(
              decoration: BoxDecoration(
                color: Color(0xff5270BD),
                borderRadius: kBorderRadius,
              ),
              child: Column(
                children: [
                  kVSpaceS,
                  ListTile(
                    // contentPadding: EdgeInsets.symmetric(horizontal: kSpaceM),
                    title: Text(
                      'Simply show the QR code and your friends can scan and tap!',
                      style: kBody2.copyWith(fontSize: 14, color: Colors.white),
                    ),
                    leading: Container(
                      width: 54,
                      height: 54,
                      child: kIcIdea,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  kVSpaceS,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
