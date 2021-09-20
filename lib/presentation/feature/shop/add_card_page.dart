part of 'shop.dart';

class AddCardPage extends StatefulWidget {
  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  String hint = '\u25CF\u25CF\u25CF\u25CF';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    final decoration = kInputDecoration.copyWith(
      border: kInputBorder.copyWith(
          borderSide: kBorderSide.copyWith(color: Colors.black87)),
      contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 15),
      hintStyle: kTextInputHint.copyWith(fontSize: 14, color: kColorGrey5),
    );
    return WScaffold(
      appBar: AppBar(
        title: Text('Add Card'),
        actions: [
          IconButton(
            // splashRadius: 28,
            icon: kIcCamera,
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.scanCard);
            },
          ),
          kHSpaceXS,
        ],
      ),
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Save'),
        onPressed: () => Navigator.of(context).pop(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceL),
        child: Form(
          child: Column(
            children: [
              kVSpaceXS,
              CreditCardWidget(
                showBackView: false,
                obscureCardCvv: true,
                // obscureCardNumber: true,
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
                // showBackView: isCvvFocused,
                textStyle:
                    kBodyBold.copyWith(fontSize: 10, color: Colors.white),
              ),
              kVSpaceXL,
              CreditCardForm(
                formKey: formKey,
                cvvCode: cvvCode,
                obscureCvv: true,
                // obscureNumber: true,
                cardNumber: cardNumber,
                cardHolderName: cardHolderName,
                expiryDate: expiryDate,
                themeColor: kColorPrimary,
                textColor: Colors.black87,
                cardNumberDecoration: decoration.copyWith(
                  hintText: 'Card number',
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: 0.5,
                          color: Colors.black26,
                          margin: EdgeInsets.symmetric(vertical: 4)),
                      kHSpaceXXS,
                      kIcVisa,
                      kHSpaceXS,
                    ],
                  ),
                ),
                expiryDateDecoration:
                    decoration.copyWith(hintText: 'Expiration date'),
                cvvCodeDecoration: decoration.copyWith(hintText: 'CVC'),
                cardHolderDecoration:
                    decoration.copyWith(hintText: 'Cardholder name'),
                onCreditCardModelChange: onCreditCardModelChange,
              ),
              kVSpaceXXL,
            ],
          ),
        ),
      ),
    );
  }
}
