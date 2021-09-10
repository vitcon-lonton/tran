part of 'theme.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: 0,
          top: -20,
          child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
        ),
        child,
      ],
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
