part of 'theme.dart';

class Background extends StatelessWidget {
  final Widget child;
  final bool gradient;
  final bool background;

  const Background.raw({
    Key? key,
    required this.child,
    required this.gradient,
    required this.background,
  }) : super(key: key);

  factory Background({required Widget child}) {
    return Background.raw(child: child, gradient: false, background: true);
  }

  factory Background.gradient({required Widget child}) {
    return Background.raw(child: child, gradient: true, background: false);
  }

  factory Background.consumer({required Widget child}) {
    return Background.raw(child: child, gradient: true, background: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          if (gradient) Positioned(left: 0, top: -20, child: kImgBGGRD),
          if (background) Positioned(left: 0, top: -20, child: kImgBG),
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
  final bool background;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;

  const ScaffoldBG.raw({
    this.key,
    required this.body,
    this.appBar,
    this.gradient = false,
    this.background = true,
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
        background: false,
        bottomNavigationBar: bottomNavigationBar);
  }

  factory ScaffoldBG.consumer(
      {Key? key,
      required Widget body,
      PreferredSizeWidget? appBar,
      Widget? bottomNavigationBar}) {
    return ScaffoldBG.raw(
        key: key,
        body: body,
        appBar: appBar,
        gradient: true,
        background: true,
        bottomNavigationBar: bottomNavigationBar);
  }

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      body: body,
      appBar: appBar,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: bottomNavigationBar,
    );

    // if (gradient && background) {
    //   return Background.consumer(child: scaffold);
    // } else if (gradient) return Background(child: scaffold);

    // return Background.gradient(child: scaffold);

    return Material(
      child: (gradient && background)
          ? Background.consumer(child: scaffold)
          : !gradient
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
