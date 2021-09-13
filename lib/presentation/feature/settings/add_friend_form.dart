part of 'settings.dart';

class AddFriendForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG.gradient(
      appBar: AppBar(
        bottom: PreferredSize(
          child: Container(
            height: 95,
            child: FlutterLogo(size: 50),
          ),
          preferredSize: Size.fromHeight(40),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceXL),
        child: Form(
          child: Column(
            children: [
              kVSpaceM,
              Text(
                'To add someone to your Friend List, Enter their Code ID',
                textAlign: TextAlign.center,
                style: kHeadline1.copyWith(fontSize: 16),
              ),
              kVSpaceL,
              WTextInput(
                onChanged: (value) {},
              ),
              kVSpaceXXL,
              Container(
                padding: EdgeInsets.symmetric(horizontal: kSpaceXXL),
                child: WSubmitBtn(
                  child: const Text('Send'),
                  radius: BorderRadius.all(Radius.circular(6)),
                  onPressed: () {},
                ),
              ),
              kVSpaceXL,
            ],
          ),
        ),
      ),
    );
  }
}
