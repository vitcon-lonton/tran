part of 'wallet.dart';

class CreateSeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG.consumer(
      appBar: AppBar(title: Text('Create Wallet')),
      bottomNavigationBar: BottomNav.submit(
        child: const Text('Create'),
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
                'SEED CONFIRMATION',
                style: kTitle1.copyWith(fontSize: 22, color: primaryColor),
              ),
              kVSpaceXS,
              Text(
                '“Please repeat your seed wording in the exact order from 1 to 8 shown below.”',
              ),
              kVSpaceXS,
              WTextInput(
                height: 125,
                maxLines: 7,
                onChanged: (v) {},
              ),
              kVSpaceXXS,
              Text(
                '“DO NOT SHARE OR GIVE THIS INFORMATION TO ANYONE.  YOUR LOSS WILL BE SOMEONE’S GAIN.”',
                style: kHeadline2.copyWith(color: kColorError, fontSize: 14),
              ),
              kVSpaceM,
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
