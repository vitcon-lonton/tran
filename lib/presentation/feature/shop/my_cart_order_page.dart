part of 'shop.dart';

class MyCartOrderPage extends StatelessWidget {
  const MyCartOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      appBar: AppBar(title: Text('My Cart')),
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Pay Now'),
        onPressed: () async {
          final res = await showPayDone(context);
          if (res != true) return;

          return Navigator.of(context)
              .popUntil((route) => route.settings.name == Routes.shop);
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceM),
        child: Column(
          children: [
            kVSpaceXL,
            SubsTile(
              qty: 1000,
              child: Padding(
                padding: const EdgeInsets.only(left: kSpaceXS),
                child: Column(
                  children: [
                    kVSpaceXS,
                    Row(children: [Image.asset(kPathGift)]),
                    kVSpaceXS,
                    const Text(
                      'A special limited one time buy when a 100km milestone is reached.',
                    ),
                  ],
                ),
              ),
            ),
            kVSpaceXL,
            Divider(
              thickness: 1,
              indent: kSpaceXL * 2,
              endIndent: kSpaceXL * 2,
              color: Color(0xffFF961C),
            ),
            kVSpaceXL,
            CardTile(),
            kVSpaceM,
          ],
        ),
      ),
    );
  }
}
