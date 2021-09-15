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
    return ScaffoldBG(
      appBar: AppBar(title: Text('Add Card')),
      bottomNavigationBar: BottomNav(
        child: WSubmitBtn(child: const Text('Save'), onPressed: () {}),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceL),
        child: Form(
          child: Column(
            children: [
              kVSpaceXS,
              CreditCardWidget(
                cvvCode: cvvCode,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cardBgColor: Colors.transparent,
                onCreditCardWidgetChange: (b) {},
                // showBackView: isCvvFocused,
                showBackView: false,
                obscureCardNumber: true,
                obscureCardCvv: true,
              ),
              CreditCardForm(
                formKey: formKey,
                cvvCode: cvvCode,
                // obscureCvv: true,
                // obscureNumber: true,
                cardNumber: cardNumber,
                cardHolderName: cardHolderName,
                expiryDate: expiryDate,
                themeColor: Colors.transparent,
                cardNumberDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'XXXX XXXX XXXX XXXX',
                ),
                expiryDateDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'XX/XX',
                ),
                cvvCodeDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'XXX',
                ),
                cardHolderDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Holder',
                ),
                onCreditCardModelChange: onCreditCardModelChange,
              ),
              kVSpaceXS,
              kVSpaceM,
              kVSpaceXXL,
              kVSpaceXXL,
            ],
          ),
        ),
      ),
    );
  }
}
