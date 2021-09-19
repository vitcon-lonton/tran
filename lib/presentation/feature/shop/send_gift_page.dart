part of 'shop.dart';

class SendGiftPage extends StatelessWidget {
  const SendGiftPage({Key? key}) : super(key: key);

  input(
      {Widget? icon,
      Widget? suffixIcon,
      String? initialValue,
      required String label,
      required void Function(String?) onChanged}) {
    return Column(
      children: [
        Row(
          children: [
            Text(label, style: kTextInputLabel),
            const Spacer(),
            icon ?? kSpaceZero,
          ],
        ),
        kVSpaceXS,
        WTextInput(
          onChanged: onChanged,
          suffixIcon: suffixIcon,
          initialValue: initialValue,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      appBar: AppBar(title: Text('Send Gift')),
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Send'),
        onPressed: () => Navigator.of(context).pop(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceM),
        child: Column(
          children: [
            kVSpaceM,
            input(
              onChanged: (v) {},
              label: 'Your wallet address',
              initialValue:
                  'e6df1c1e5aac47d7c545cb5684c5526aaa7385df2ff534d690a7954929331ece',
            ),
            kVSpaceM,
            input(
              onChanged: (v) {},
              label: 'Your destination wallet address',
              icon: IconButton(
                icon: kIcCamera,
                onPressed: () => Navigator.of(context).pushNamed(Routes.scanQR),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down_rounded),
              ),
              initialValue:
                  'e6df1c1e5aac47d7c545cb5684c5526aaa7385df2ff534d690a7954929331ece',
            ),
            kVSpaceL,
            input(label: 'Amount', onChanged: (v) {}),
            kVSpaceXL,
          ],
        ),
      ),
    );
  }
}
