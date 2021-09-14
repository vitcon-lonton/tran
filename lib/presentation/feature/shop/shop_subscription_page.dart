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
                padding: EdgeInsets.symmetric(horizontal: kSpaceL * 3),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: kTitleBold.copyWith(fontSize: 28),
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(borderSide: BorderSide()),
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 16),
                  ),
                ),
              ),
              kVSpaceXXL,
              Row(
                children: [
                  Text('Add new payment method',
                      style: kBodyMedium.copyWith(fontSize: 14)),
                ],
              ),
              kVSpaceXS,
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: Size.fromHeight(60),
                  shadowColor: Colors.transparent,
                ),
                child: Row(
                  children: [
                    Icon(Icons.padding),
                    const Spacer(),
                    Icon(Icons.radio_button_on_sharp),
                  ],
                ),
              ),
              kVSpaceXXL,
              kVSpaceXXL,
            ],
          ),
        ),
      ),
    );
  }
}
