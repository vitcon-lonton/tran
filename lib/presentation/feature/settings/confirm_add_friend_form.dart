part of 'settings.dart';

class ConfirmAddFriendForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG.gradient(
      appBar: AppBar(
        bottom: PreferredSize(
          child: kImgRafiki,
          preferredSize: Size.fromHeight(70),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceXL),
        child: Form(
          child: Column(
            children: [
              kVSpaceL,
              Text(
                'Notification',
                style: kTitleBold.copyWith(fontSize: 22, color: primaryColor),
              ),
              kVSpaceM,
              Text(
                'Alex wants to be your friend.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600,
                ),
              ),
              kVSpaceXL,
              Container(
                padding: EdgeInsets.symmetric(horizontal: kSpaceM),
                child: WSubmitBtn(
                  child: const Text('Accept'),
                  radius: BorderRadius.all(Radius.circular(6)),
                  onPressed: () {},
                ),
              ),
              kVSpaceM,
              Container(
                height: 48,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: kSpaceM),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Decline'),
                  style: OutlinedButton.styleFrom(
                    textStyle: kBTNTitle,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                  ),
                  // radius: BorderRadius.all(Radius.circular(6)),
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
