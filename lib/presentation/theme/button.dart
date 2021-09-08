part of 'theme.dart';

class WSubmitBtn extends StatelessWidget {
  const WSubmitBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: kSpaceM),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('data'),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}
