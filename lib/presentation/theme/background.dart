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
          top: 0,
          left: 0,
          child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
        ),
        child,
      ],
    );
  }
}
