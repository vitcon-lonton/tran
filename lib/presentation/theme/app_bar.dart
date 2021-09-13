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

class TabHeader extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Color? backgroundColor;
  final PreferredSizeWidget? bottom;

  const TabHeader({
    Key? key,
    this.bottom,
    required this.title,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: title,
      bottom: bottom,
      centerTitle: false,
      iconTheme: IconThemeData.fallback(),
      backgroundColor: backgroundColor ?? Colors.transparent,
      titleTextStyle:
          kTitle1.copyWith(fontSize: 28, fontWeight: FontWeight.w700),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none_rounded),
        )
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}
