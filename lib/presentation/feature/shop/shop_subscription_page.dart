part of 'shop.dart';

class ShopSubscriptionPage extends StatelessWidget {
  const ShopSubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      appBar: AppBar(title: Text('Subscription')),
      bottomNavigationBar: BottomNav(
        child: WSubmitBtn(child: const Text('Checkout'), onPressed: () {}),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceL),
        child: Form(
          child: Column(
            children: [
              kVSpaceXS,
              Text('Pay subscription fee - tran ME'),
              kVSpaceXS,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kSpaceS),
                child: Theme(
                  data: ThemeData(
                    colorScheme: ColorScheme.light(primary: kColorOrange),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    style: kTitleBold.copyWith(fontSize: 28),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 16),
                    ),
                  ),
                ),
              ),
              kVSpaceXXL,
              PaymentMethodSelector(),
              kVSpaceXXL,
            ],
          ),
        ),
      ),
    );
  }
}
