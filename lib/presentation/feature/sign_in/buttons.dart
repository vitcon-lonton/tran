part of 'sign_in.dart';

class WSIIconButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback onPressed;

  const WSIIconButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        fixedSize: Size.fromHeight(50),
        padding: EdgeInsets.symmetric(horizontal: kSpaceXXS),
        textStyle: TextStyle(fontSize: 16, color: Colors.black),
        shape: RoundedRectangleBorder(
          side: BorderSide(),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox.fromSize(size: Size.square(50), child: icon),
          Text(text, style: kBTNTitle),
          SizedBox.fromSize(size: Size.square(50)),
        ],
      ),
    );
  }
}

class Separator extends StatelessWidget {
  const Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          const Expanded(child: Divider(color: Colors.black, thickness: 1)),
          kHSpaceM,
          Text('OR'),
          kHSpaceM,
          const Expanded(child: Divider(color: Colors.black, thickness: 1)),
        ],
      ),
    );
  }
}
