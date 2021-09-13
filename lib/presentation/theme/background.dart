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
  final Key? key;
  final Widget body;
  final bool gradient;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;

  const ScaffoldBG.raw({
    this.key,
    required this.body,
    this.appBar,
    this.gradient = false,
    this.bottomNavigationBar,
  }) : super(key: key);

  factory ScaffoldBG(
      {Key? key,
      required Widget body,
      PreferredSizeWidget? appBar,
      Widget? bottomNavigationBar}) {
    return ScaffoldBG.raw(
      key: key,
      body: body,
      appBar: appBar,
      gradient: false,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  factory ScaffoldBG.gradient(
      {Key? key,
      required Widget body,
      PreferredSizeWidget? appBar,
      Widget? bottomNavigationBar}) {
    return ScaffoldBG.raw(
      key: key,
      body: body,
      appBar: appBar,
      gradient: true,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
        body: body,
        appBar: appBar,
        backgroundColor: Colors.transparent,
        bottomNavigationBar: bottomNavigationBar);

    return Material(
      child: !gradient
          ? Background(child: scaffold)
          : Background.gradient(child: scaffold),
    );
  }
}

class BottomNav extends StatelessWidget {
  final Widget child;

  const BottomNav({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: child,
      minimum: EdgeInsets.symmetric(
        horizontal: kSpaceM,
      ).copyWith(bottom: kSpaceS),
    );
  }
}
