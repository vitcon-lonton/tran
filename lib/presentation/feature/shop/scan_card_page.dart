part of 'shop.dart';

class ScanCardPage extends StatefulWidget {
  @override
  State<ScanCardPage> createState() => _ScanCardPageState();
}

class _ScanCardPageState extends State<ScanCardPage> {
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
        title: Text('Camera'),
        backgroundColor: Colors.black,
        titleTextStyle: Theme.of(
          context,
        ).appBarTheme.titleTextStyle!.copyWith(color: Colors.white),
        iconTheme: IconThemeData.fallback().copyWith(color: Colors.white),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: kSpaceXXL),
          padding: EdgeInsets.symmetric(horizontal: kSpaceL),
          child: CreditCardWidget(
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
        ),
      ),
    );
  }
}
