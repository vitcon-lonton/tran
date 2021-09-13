part of 'theme.dart';

class WSubmitBtn extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final BorderRadius? radius;

  const WSubmitBtn({
    Key? key,
    required this.child,
    required this.onPressed,
    this.radius,
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
          elevation: 0,
          textStyle: kBTNTitle,
          // primary: kColorAccentBlue,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: radius ?? BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
    );
  }
}
