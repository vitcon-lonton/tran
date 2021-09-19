part of 'shop.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      appBar: AppBar(title: Text('My Order')),
      bottomNavigationBar: BottomNav.raw(
        child: CheckoutButton(
          onPressed: () => Navigator.of(context).pushNamed(Routes.myCartOrder),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceM),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: kSpaceXXL + kSpaceM),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 40.0),
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 24.0),
                      decoration: BoxDecoration(
                        color: kColorBlue2,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          kVSpaceXXS,
                          Text(
                            '10,000 COINS',
                            style: kBodyMedium.copyWith(fontSize: 16),
                          ),
                          kVSpaceXXS,
                          Text(
                            'Limited buy requires a 100km in walking mode.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(alignment: Alignment.topCenter, child: kImgGift)
                ],
              ),
            ),
            kVSpaceXL,
            Container(
              height: 1,
              color: Color(0xffFF961C),
              margin: EdgeInsets.symmetric(horizontal: kSpaceM),
            ),
            kVSpaceXL,
            PaymentMethodSelector(),
            kVSpaceM,
          ],
        ),
      ),
    );
  }
}
