part of 'wallet.dart';

class CreateWalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG.consumer(
      appBar: AppBar(title: Text('Create Wallet')),
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Next'),
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
                'SEED',
                style: kTitle1.copyWith(fontSize: 22, color: primaryColor),
              ),
              kVSpaceXS,
              Text(
                '“Please write down your alphanumeric wording in the 8 boxes below on a piece of paper.”',
              ),
              kVSpaceXS,
              Text('“Write the word in exact order from 1 to 8.”'),
              kVSpaceXS,
              Text(
                '“Please store it in a safe place. Your 8 words seed will help you to restore your created wallet.”',
              ),
              kVSpaceXS,
              Text(
                '“DO NOT SHARE OR GIVE THIS INFORMATION TO ANYONE.  YOUR LOSS WILL BE SOMEONE’S GAIN.”',
              ),
              kVSpaceM,
              kVSpaceM,
              Row(
                children: [
                  Expanded(child: WWordInput(onChanged: (value) {})),
                  kHSpaceL,
                  Expanded(child: WWordInput(onChanged: (value) {})),
                ],
              ),
              kVSpaceM,
              Row(
                children: [
                  Expanded(child: WWordInput(onChanged: (value) {})),
                  kHSpaceL,
                  Expanded(child: WWordInput(onChanged: (value) {})),
                ],
              ),
              kVSpaceM,
              Row(
                children: [
                  Expanded(child: WWordInput(onChanged: (value) {})),
                  kHSpaceL,
                  Expanded(child: WWordInput(onChanged: (value) {})),
                ],
              ),
              kVSpaceM,
              Row(
                children: [
                  Expanded(child: WWordInput(onChanged: (value) {})),
                  kHSpaceL,
                  Expanded(child: WWordInput(onChanged: (value) {})),
                ],
              ),
              kVSpaceXXL,
            ],
          ),
        ),
      ),
    );
  }
}
