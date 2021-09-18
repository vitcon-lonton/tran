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
  final bool? scrollable;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;

  const ScaffoldBG.raw({
    this.key,
    required this.body,
    this.appBar,
    this.scrollable,
    this.gradient = false,
    this.background = true,
    this.bottomNavigationBar,
  }) : super(key: key);

  factory ScaffoldBG(
      {Key? key,
      bool? scrollable,
      required Widget body,
      PreferredSizeWidget? appBar,
      Widget? bottomNavigationBar}) {
    return ScaffoldBG.raw(
      key: key,
      body: body,
      appBar: appBar,
      gradient: false,
      scrollable: scrollable,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  factory ScaffoldBG.gradient(
      {Key? key,
      bool? scrollable,
      required Widget body,
      PreferredSizeWidget? appBar,
      Widget? bottomNavigationBar}) {
    return ScaffoldBG.raw(
        key: key,
        body: body,
        appBar: appBar,
        gradient: true,
        background: false,
        scrollable: scrollable,
        bottomNavigationBar: bottomNavigationBar);
  }

  factory ScaffoldBG.consumer(
      {Key? key,
      bool? scrollable,
      required Widget body,
      PreferredSizeWidget? appBar,
      Widget? bottomNavigationBar}) {
    return ScaffoldBG.raw(
        key: key,
        body: body,
        appBar: appBar,
        gradient: true,
        background: true,
        scrollable: scrollable,
        bottomNavigationBar: bottomNavigationBar);
  }

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: bottomNavigationBar,
      body: (scrollable ?? false) ? SingleChildScrollView(child: body) : body,
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
  final bool submit;
  final Widget child;
  final VoidCallback? onPressed;

  const BottomNav._({
    Key? key,
    this.onPressed,
    required this.child,
    required this.submit,
  }) : super(key: key);

  factory BottomNav.raw({Key? key, required Widget child}) {
    return BottomNav._(key: key, child: child, submit: true, onPressed: null);
  }

  factory BottomNav.submit({
    Key? key,
    required Widget child,
    VoidCallback? onPressed,
  }) {
    return BottomNav._(
      key: key,
      child: child,
      submit: false,
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: submit ? child : WSubmitBtn(child: child, onPressed: onPressed),
      minimum: EdgeInsets.symmetric(
        horizontal: kSpaceM,
      ).copyWith(bottom: kSpaceS),
    );
  }
}
