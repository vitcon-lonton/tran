part of 'theme.dart';

class Background extends StatelessWidget {
  final Widget child;
  final bool gradient;

  const Background.raw({
    Key? key,
    required this.child,
    required this.gradient,
  }) : super(key: key);

  factory Background({required Widget child}) {
    return Background.raw(child: child, gradient: false);
  }

  factory Background.gradient({required Widget child}) {
    return Background.raw(child: child, gradient: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        // fit: StackFit.expand,
        children: [
          Positioned(left: 0, top: -20, child: gradient ? kImgBGGRD : kImgBG),
          child,
        ],
      ),
    );
  }
}

class ScaffoldBG extends StatelessWidget {
  final Widget body;

  const ScaffoldBG({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Background(child: body));
  }
}
