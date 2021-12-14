part of 'theme.dart';

class WCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const WCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        value: value,
        onChanged: onChanged,
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith((states) => kColorGrey4),
      ),
    );
  }
}
