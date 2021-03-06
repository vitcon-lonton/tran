part of 'shop.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      appBar: AppBar(title: Text('Subscription')),
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Checkout'),
        onPressed: () => Navigator.of(context).pushNamed(Routes.myCartSubs),
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
                    readOnly: true,
                    initialValue: '\$10',
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
