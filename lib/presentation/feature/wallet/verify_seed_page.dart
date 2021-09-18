part of 'wallet.dart';

class VerifySeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG.consumer(
      appBar: AppBar(title: Text('Create Wallet')),
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Done'),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceL),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kVSpaceXS,
              Text(
                'SEED COMPLETE',
                style: kTitle1.copyWith(fontSize: 22, color: primaryColor),
              ),
              kVSpaceXS,
              Text(
                '“DO NOT SHARE OR GIVE THIS INFORMATION TO ANYONE.  YOUR LOSS WILL BE SOMEONE’S GAIN.”',
                style: kHeadline2.copyWith(color: kColorError, fontSize: 14),
              ),
              kVSpaceM,
              kVSpaceM,
              kVSpaceXS,
              WTextInput(
                onChanged: (v) {},
                label: 'Private Key',
                initialValue:
                    'e6df1c1e5aac47d7c545cb5684c5526aaa7385df2ff534d690a7954929331ece',
              ),
              kVSpaceL,
              WTextInput(
                onChanged: (v) {},
                label: 'Public Key',
              ),
              kVSpaceL,
              WTextInput(
                onChanged: (v) {},
                label: 'Wallet address',
                initialValue: '04c6ee8fcead2bfd13d45d26bdbed94d8aab827f',
              ),
              kVSpaceXXL,
            ],
          ),
        ),
      ),
    );
  }
}
