part of 'shop.dart';

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
    return Column(
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
    );
  }
}

class Boxes extends StatelessWidget {
  const Boxes({Key? key}) : super(key: key);

  _line() {
    return Container(
      height: 2,
      margin: EdgeInsets.symmetric(horizontal: kSpaceM),
      decoration: BoxDecoration(
        color: Color(0xffFF961C),
        boxShadow: [
          BoxShadow(blurRadius: 4, offset: Offset(0, 4), color: Colors.black26),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _line(),
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
        _line(),
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
        Positioned(top: 0, right: 0, bottom: 0, child: kImg1392),
      ],
    );
  }
}

class PaymentMethodSelector extends StatelessWidget {
  const PaymentMethodSelector({Key? key}) : super(key: key);

  Widget button(Widget child) {
    return ButtonTheme(
      child: ElevatedButton(
        // child: Row(
        //   children: [
        //     icon,
        //     const Spacer(),
        //     Icon(Icons.radio_button_on_sharp),
        //   ],
        // ),
        onPressed: () {},
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
        ),
        kVSpaceM,
        button(infoCard(kIcVisa)),
        kVSpaceM,
        button(infoCard(kIcMastercard)),
        kVSpaceM,
        button(
          Row(
            children: [
              Icon(Icons.add_circle, size: 36, color: primaryColor),
              kHSpaceL,
              Text('Add card', style: kBodyBold.copyWith(color: primaryColor)),
            ],
          ),
        ),
      ],
    );
  }
}
