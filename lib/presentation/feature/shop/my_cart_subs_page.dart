part of 'shop.dart';

class MyCartSubsPage extends StatelessWidget {
  const MyCartSubsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
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
              qty: 1,
              child: Column(
                children: [
                  Image.asset(kPathUpBG),
                  kVSpaceXS,
                  const Text('Pay subscription fee for tran ME'),
                ],
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
