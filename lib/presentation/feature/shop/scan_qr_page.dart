part of 'shop.dart';

class ScanQRPage extends StatefulWidget {
  @override
  State<ScanQRPage> createState() => _ScanQRPageState();
}

class _ScanQRPageState extends State<ScanQRPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  String hint = '\u25CF\u25CF\u25CF\u25CF';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Scan QR'),
        backgroundColor: Colors.black,
        titleTextStyle: Theme.of(
          context,
        ).appBarTheme.titleTextStyle!.copyWith(color: Colors.white),
        iconTheme: IconThemeData.fallback().copyWith(color: Colors.white),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: kSpaceXXL),
        padding: EdgeInsets.symmetric(horizontal: kSpaceL),
        child: Column(
          children: [
            const Spacer(),
            Spacer(),
            CreditCardWidget(
              showBackView: false,
              obscureCardCvv: true,
              isHolderNameVisible: true,
              cvvCode: cvvCode,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cardBgColor: kColorPrimary,
              labelExpiredDate: '__/__',
              labelCardHolder: '____ ____',
              backgroundImage: kPathSHAPE,
              onCreditCardWidgetChange: (b) {},
              textStyle: kBodyBold.copyWith(fontSize: 10, color: Colors.white),
            ),
            kVSpaceXXL,
            const Spacer(),
            Text(
              'Hold your device to scan the QR code',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.white),
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
