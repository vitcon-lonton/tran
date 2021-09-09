part of 'theme.dart';

class WCheckbox extends StatelessWidget {
  final bool value;

  const WCheckbox({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        value: value,
        onChanged: (value) {},
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith((states) => kColorGrey4),
      ),
    );
  }
}
