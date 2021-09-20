part of 'shop.dart';

Future<bool?> showPayDone(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (_) => Column(
      children: [const Spacer(), PayDone(), const Spacer(flex: 2)],
    ),
  );
}

class Box extends StatelessWidget {
  final int coin;
  final double price;

  const Box({
    Key? key,
    required this.coin,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(Routes.myOrder),
        child: Column(
          children: [
            kImgGift,
            kVSpaceXXS,
            Text('$coin COINS', style: TextStyle(fontSize: 12)),
            kVSpaceXXS,
            Container(
              child: Text('\$$price.00', style: TextStyle(fontSize: 12)),
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: kColorBlue2,
                borderRadius: BorderRadius.circular(2),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Boxes extends StatelessWidget {
  const Boxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 0,
          thickness: 2,
          indent: kSpaceM,
          endIndent: kSpaceM,
          color: Color(0xffFF961C),
        ),
        kVSpaceL,
        Text(
          'These boxes are limited time sale ONLY!',
          style: TextStyle(color: primaryColor),
        ),
        kVSpaceS,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Box(coin: 100, price: 5.00),
            Box(coin: 200, price: 10.00),
            Box(coin: 500, price: 25.00),
            Box(coin: 1000, price: 50.00),
          ],
        ),
        kVSpaceL,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Box(coin: 2000, price: 100.00),
            Box(coin: 5000, price: 250.00),
            Box(coin: 10000, price: 400.00),
            Box(coin: 20000, price: 800.00),
          ],
        ),
        kVSpaceL,
        Divider(
          height: 0,
          thickness: 2,
          indent: kSpaceM,
          endIndent: kSpaceM,
          color: Color(0xffFF961C),
        ),
      ],
    );
  }
}

class ShopBG extends StatelessWidget {
  const ShopBG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        kImgUpBG,
        Positioned(top: 16, right: 16, bottom: 8, child: kImg1392),
      ],
    );
  }
}

class PaymentMethodSelector extends StatelessWidget {
  const PaymentMethodSelector({Key? key}) : super(key: key);

  Widget button(Widget child, {VoidCallback? onPressed}) {
    return ButtonTheme(
      child: ElevatedButton(
        onPressed: onPressed,
        child: IconTheme(
          child: child,
          data: IconThemeData(color: Colors.black.withOpacity(0.8)),
        ),
        style: ElevatedButton.styleFrom(
          // onSurface: primaryColor,
          primary: kColorBlue2,
          onPrimary: primaryColor,
          fixedSize: Size.fromHeight(60),
          textStyle: TextStyle(
            fontSize: 12,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
          ),
          shadowColor: Colors.transparent,
          // onPrimary: Colors.black.withOpacity(0.8),
          padding: EdgeInsets.symmetric(
            horizontal: kSpaceM,
            vertical: kSpaceXXS,
          ),
        ),
      ),
    );
  }

  infoCard(Widget icon) {
    return Row(
      children: [
        icon,
        kHSpaceM,
        Expanded(
          flex: 4,
          child: DefaultTextStyle(
            style: TextStyle(
              fontSize: 12,
              color: Colors.black87,
              fontWeight: FontWeight.w400,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('5168'),
                    Text('1234'),
                    Text('4567'),
                    Text('5789'),
                  ],
                ),
                Row(
                  children: [
                    Text('JOHN CITIZEN'),
                    const Spacer(),
                    Text('12/25')
                  ],
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        Icon(Icons.radio_button_on_sharp),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Add new payment method',
                style: kBodyMedium.copyWith(fontSize: 14)),
          ],
        ),
        kVSpaceS,
        button(
          Row(
            children: [
              kIcPaypal,
              const Spacer(),
              Icon(Icons.radio_button_unchecked),
            ],
          ),
          onPressed: () {},
        ),
        kVSpaceM,
        button(infoCard(kIcVisa), onPressed: () {}),
        kVSpaceM,
        button(infoCard(kIcMastercard), onPressed: () {}),
        kVSpaceM,
        button(
          Row(
            children: [
              Icon(Icons.add_circle, size: 36, color: primaryColor),
              kHSpaceL,
              Text('Add card', style: kBodyBold.copyWith(color: primaryColor)),
            ],
          ),
          onPressed: () => Navigator.of(context).pushNamed(Routes.addCard),
        ),
      ],
    );
  }
}

class CheckoutButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const CheckoutButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: EdgeInsets.symmetric(horizontal: kSpaceXXL),
      child: ClipRRect(
        borderRadius: kBorderRadius,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: kColorOrange,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: primaryColor,
                      alignment: Alignment.center,
                      child: Text(
                        'Checkout',
                        style: kBTNTitle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 24,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(12)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '\$400.00',
                        style: kBTNTitle.copyWith(color: Colors.black54),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: onPressed,
              child: Container(),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardTile extends StatelessWidget {
  const CardTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 12,
        color: Colors.black87,
        fontWeight: FontWeight.w400,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kSpaceS),
        decoration: BoxDecoration(
          color: kColorBlue2,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Column(
          children: [
            kVSpaceL,
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Card number'),
                      kVSpaceXXS,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('5168'),
                          Text('1234'),
                          Text('4567'),
                          Text('5789'),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                kIcVisa,
                kHSpaceS,
              ],
            ),
            kVSpaceM,
            Row(
              children: [
                Expanded(child: column('Card name', 'JOHN CITIZEN')),
                kHSpaceM,
                Expanded(child: column('Expiration date', '12/25')),
                kHSpaceM,
                Expanded(child: column('CVC', '516')),
                kHSpaceM,
              ],
            ),
            kVSpaceXXL,
          ],
        ),
      ),
    );
  }

  Widget column(String title, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(title), kVSpaceXXS, Text(value)],
    );
  }
}

class SubsTile extends StatelessWidget {
  final int qty;
  final Widget child;

  const SubsTile({
    Key? key,
    required this.qty,
    required this.child,
  }) : super(key: key);

  Widget column(String title, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title),
        Container(
          child: Text(value),
          color: kColorBlue3,
          padding: EdgeInsets.symmetric(
            vertical: kSpaceXS,
            horizontal: kSpaceM,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: kColorBlue2,
        borderRadius: BorderRadius.circular(2),
      ),
      padding: EdgeInsets.symmetric(horizontal: kSpaceXXS),
      child: Row(
        children: [
          Expanded(flex: 4, child: child),
          kHSpaceM,
          Expanded(
            flex: 3,
            child: Column(
              children: [
                kVSpaceS,
                Row(
                  children: [
                    column('Qty', '1'),
                    const Spacer(),
                    column('Price', '\$10'),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.only(left: 24),
                  child: Column(
                    children: [
                      const Divider(color: Color(0xffFF961C), thickness: 1),
                      Row(
                        children: [
                          Text('Total:'),
                          const Spacer(),
                          Text('\$10')
                        ],
                      ),
                      kVSpaceXXS,
                      const Divider(
                          color: Color(0xffFF961C), height: 0, thickness: 1),
                    ],
                  ),
                ),
                kVSpaceS,
              ],
            ),
          ),
          kHSpaceS,
        ],
      ),
    );
  }
}

class WarningBox extends StatelessWidget {
  const WarningBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kSpaceXXL),
      decoration: BoxDecoration(
        color: Color(0xffFFD04C),
        borderRadius: kBorderRadius,
        border: Border.fromBorderSide(kBorderSide.copyWith(width: 0.6)),
      ),
      child: Column(
        children: [
          kVSpaceL,
          kIcCar,
          kVSpaceL,
          Text('Warning!'),
          kVSpaceXS,
          Text('You\'re going to fast'),
          kVSpaceL,
          Text('tran ME should be played fairly'),
          kVSpaceL,
          Container(
            height: 48,
            width: double.infinity,
            child: WSubmitBtn(
              onPressed: () {},
              child: Text('Confirm'),
              radius: BorderRadius.circular(6.0),
            ),
          ),
          kVSpaceL,
        ],
      ),
    );
  }
}

class PayDone extends StatelessWidget {
  const PayDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kSpaceL,
      ).copyWith(bottom: kSpaceXXL),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
        child: Background.gradient(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kSpaceXL),
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  kVSpaceM,
                  kIcDone,
                  Text(
                    'Thank you\n for your order',
                    textAlign: TextAlign.center,
                    style: kBodyMedium.copyWith(fontSize: 22),
                  ),
                  kVSpaceXL,
                  Container(
                    height: 46,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Done'),
                      onPressed: () => Navigator.of(context).pop(true),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(60, 121, 230, 1),
                        textStyle: kBodyMedium.copyWith(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  kVSpaceM,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
