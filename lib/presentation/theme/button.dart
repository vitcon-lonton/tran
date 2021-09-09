part of 'theme.dart';

final kBTNTitle = kDF.copyWith(fontSize: 18, fontWeight: FontWeight.bold);

class WSubmitBtn extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const WSubmitBtn({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        child: child,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          textStyle: kBTNTitle,
          primary: kColorAccentBlue,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
    );
  }
}
