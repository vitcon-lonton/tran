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
            borderRadius: BorderRadius.circular(2),
            color: Color.fromRGBO(194, 214, 232, 0.5),
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
