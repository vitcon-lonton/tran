part of 'wallet.dart';

class TransactionHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG.consumer(
      appBar: AppBar(title: Text('Transaction History')),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (_, i) => kVSpaceL,
        itemBuilder: (_, i) => TransactionTile(),
        padding: EdgeInsets.symmetric(
          horizontal: kSpaceM,
        ).copyWith(bottom: kSpaceXXL, top: kSpaceXS),
      ),
    );
  }
}
