import 'package:flutter/material.dart';
import 'package:tranme/presentation/theme/theme.dart';

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
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        fixedSize: Size.fromHeight(50),
        padding: EdgeInsets.only(left: 0),
        backgroundColor: Theme.of(context).primaryColorLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kSpaceS),
            child: IconTheme(
              child: icon,
              data: IconThemeData(color: Colors.white),
            ),
          ),
          Text(text, style: TextStyle(fontSize: 15, color: Colors.white)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: kSpaceS),
            child: IconTheme(
              child: icon,
              data: IconThemeData(color: Colors.transparent),
            ),
          ),
        ],
      ),
    );

    // ignore: dead_code
    return Container(
      height: 45,
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.facebook),
        label: Text('SIGN IN with Facebook'),
        style: OutlinedButton.styleFrom(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.zero,
          textStyle: TextStyle(fontSize: 16, color: kColorBlack),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
    );
  }
}

class WLoginFBButton extends StatelessWidget {
  const WLoginFBButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.facebook),
      label: Text('SIGN IN with Facebook'),
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
          const Expanded(child: Divider(color: Colors.black)),
          kHSpaceM,
          Text('OR'),
          kHSpaceM,
          const Expanded(child: Divider(color: Colors.black)),
        ],
      ),
    );
  }
}
