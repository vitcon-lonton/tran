part of 'theme.dart';

class OptionTile extends StatelessWidget {
  final String text;
  final double? height;
  final EdgeInsets? padding;
  final BorderRadius? radius;
  final VoidCallback? onPressed;

  const OptionTile(
    this.text, {
    Key? key,
    this.height,
    this.radius,
    this.padding,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45,
      child: TextButton(
        onPressed: onPressed ?? () {},
        child: Row(
          children: [
            kHSpaceM,
            Text(text, style: kBodyMedium.copyWith(fontSize: 14)),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_outlined, size: 12),
            kHSpaceM,
          ],
        ),
        style: TextButton.styleFrom(
          fixedSize: Size.fromHeight(44),
          padding: padding ?? EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: radius ?? BorderRadius.zero,
          ),
        ),
      ),
    );
  }
}

class OptionsView extends StatelessWidget {
  final List<OptionTile> options;

  const OptionsView({Key? key, required this.options}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: kBorderRadius,
        border: Border.fromBorderSide(kBorderSide),
      ),
      child: Column(
        children: options
            .asMap()
            .entries
            .map((e) {
              return [
                e.value,
                if (e.key != options.length)
                  const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceM)
              ];
            })
            .expand((e) => e)
            .toList(),
      ),
    );
  }
}
