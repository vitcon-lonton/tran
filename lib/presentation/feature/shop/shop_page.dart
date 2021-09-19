part of 'shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      appBar: AppBar(title: Text('Shop')),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceM),
        child: Column(
          children: [
            InkWell(
              child: ShopBG(),
              onTap: () => Navigator.of(context).pushNamed(Routes.subscription),
            ),
            kVSpaceS,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSpaceL),
              child: Text(
                'You will be rewarded 500 with this  subscription.',
                textAlign: TextAlign.center,
                style: TextStyle(color: primaryColor),
              ),
            ),
            kVSpaceM,
            Boxes(),
          ],
        ),
      ),
    );
  }
}
