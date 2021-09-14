part of 'wallet.dart';

class WWordInput extends StatelessWidget {
  final void Function(String?)? onChanged;

  const WWordInput({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WTextInput(
      height: 32,
      onChanged: onChanged,
      fillColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(6)),
    );
  }
}

class WTokenInput extends StatelessWidget {
  final void Function(String?)? onChanged;

  const WTokenInput({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kSpaceL * 3),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: 'Token',
          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 0),
          hintStyle: kTitleBold.copyWith(color: Colors.black54),
        ),
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  const TransactionTile({Key? key}) : super(key: key);

  Widget row(String title, String value) {
    return Row(
      children: [
        Expanded(child: Text(title, style: TextStyle())),
        kHSpaceS,
        Expanded(
          flex: 4,
          child: Text(
            value,
            maxLines: 1,
            style: TextStyle(),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kSpaceS),
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        border: Border.fromBorderSide(
          kBorderSide.copyWith(color: Colors.black),
        ),
      ),
      child: Column(
        children: [
          kVSpaceS,
          row('Hash', 'xad5566fe61436e556n5lik566'),
          kVSpaceS,
          row('Date', '01/08/2021'),
          kVSpaceS,
          row('Time', '8:15pm'),
          kVSpaceS,
          row('Volume', '1103.123145 3CO'),
          kVSpaceS,
          row('AUD', '\$11.03'),
          kVSpaceS,
        ],
      ),
    );
  }
}
