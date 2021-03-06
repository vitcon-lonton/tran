part of 'credit_card.dart';

const double webBreakPoint = 800;
const double creditCardAspectRatio = 0.5714;
const double creditCardPadding = 0;
// const double creditCardPadding = 16;

enum CardType { otherBrand, mastercard, visa, americanExpress, discover }

class CreditCardBrand {
  CardType? brandName;

  CreditCardBrand(this.brandName);
}

class CreditCardModel {
  CreditCardModel(this.cardNumber, this.expiryDate, this.cardHolderName,
      this.cvvCode, this.isCvvFocused);

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
}

class LocalizedText {
  const LocalizedText({
    this.cardNumberLabel = _cardNumberLabelDefault,
    this.cardNumberHint = _cardNumberHintDefault,
    this.expiryDateLabel = _expiryDateLabelDefault,
    this.expiryDateHint = _expiryDateHintDefault,
    this.cvvLabel = _cvvLabelDefault,
    this.cvvHint = _cvvHintDefault,
    this.cardHolderLabel = _cardHolderLabelDefault,
    this.cardHolderHint = _cardHolderHintDefault,
  });

  static const String _cardNumberLabelDefault = 'Card number';
  static const String _cardNumberHintDefault = 'xxxx xxxx xxxx xxxx';
  static const String _expiryDateLabelDefault = 'Expiry Date';
  static const String _expiryDateHintDefault = 'MM/YY';
  static const String _cvvLabelDefault = 'CVV';
  static const String _cvvHintDefault = 'XXXX';
  static const String _cardHolderLabelDefault = 'CARDHOLDER NAME';
  static const String _cardHolderHintDefault = 'Cardholder name';

  final String cardNumberLabel;
  final String cardNumberHint;
  final String expiryDateLabel;
  final String expiryDateHint;
  final String cvvLabel;
  final String cvvHint;
  final String cardHolderLabel;
  final String cardHolderHint;
}

class AnimationCard extends StatelessWidget {
  const AnimationCard({
    required this.child,
    required this.animation,
  });

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        final Matrix4 transform = Matrix4.identity();
        transform.setEntry(3, 2, 0.001);
        transform.rotateY(animation.value);
        return Transform(
          transform: transform,
          alignment: Alignment.center,
          child: child,
        );
      },
      child: child,
    );
  }
}
