part of 'theme.dart';

class WSubmitBtn extends StatelessWidget {
  final Widget child;
  final BorderRadius? radius;
  final VoidCallback? onPressed;

  const WSubmitBtn({
    Key? key,
    this.radius,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        child: child,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          textStyle: kBTNTitle,
          // primary: kColorAccentBlue,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: radius ?? BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
