part of 'credit_card.dart';

class CardBackground extends StatelessWidget {
  const CardBackground({
    Key? key,
    required this.backgroundColor,
    required this.backgroundImage,
    required this.child,
    this.width,
    this.height,
  }) : super(key: key);

  final String? backgroundImage;
  final Widget child;
  final Color backgroundColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final double screenWidth = constraints.maxWidth.isInfinite
          ? MediaQuery.of(context).size.width
          : constraints.maxWidth;
      final double screenHeight = MediaQuery.of(context).size.height;
      return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(creditCardPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: backgroundColor,
              image: backgroundImage != null
                  ? DecorationImage(
                      alignment: Alignment.bottomLeft,
                      image: ExactAssetImage(backgroundImage!),
                    )
                  : null,
            ),
            width: width ?? screenWidth,
            height: height ??
                (orientation == Orientation.portrait
                    ? (((width ?? screenWidth) - (creditCardPadding * 2)) *
                        creditCardAspectRatio)
                    : screenHeight / 2),
            child: ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(8),
              child: Container(child: child),
            ),
          ),
        ],
      );
    });
  }
}
