part of 'settings.dart';

class AddFriendForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WScaffold.gradient(
      appBar: AppBar(
        bottom: PreferredSize(
          child: kImgPana,
          preferredSize: Size.fromHeight(50),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kSpaceXL),
        child: Form(
          child: Column(
            children: [
              kVSpaceM,
              Text(
                'To add someone to your Friend List,\n Enter their Code ID',
                textAlign: TextAlign.center,
                style: kHeadline1.copyWith(fontSize: 16),
              ),
              kVSpaceXXL,
              WTextInput(
                height: 40,
                onChanged: (value) {},
              ),
              kVSpaceXXL,
              Container(
                padding: EdgeInsets.symmetric(horizontal: kSpaceXXL),
                child: WSubmitBtn(
                  child: const Text('Send'),
                  radius: BorderRadius.all(Radius.circular(6)),
                  onPressed: () => Navigator.of(context).pop(),
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
