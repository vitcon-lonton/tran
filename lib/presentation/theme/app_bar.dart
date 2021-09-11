part of 'theme.dart';

class WAppBar1 extends StatelessWidget {
  final String data;

  const WAppBar1(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Good Morning'),
          Text('Monday, 01 Jun 2021'),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none_rounded),
        )
      ],
    );
  }
}
