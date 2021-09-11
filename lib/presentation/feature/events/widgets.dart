part of 'events.dart';

final _kBorderRadius = BorderRadius.circular(12);
final _kBorder = Border.all(width: 0.6, color: Color(0xffF0EEEE));

class EventsAB extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;

  const EventsAB({Key? key, this.bottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      bottom: bottom,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData.fallback(),
      titleTextStyle:
          kTitle1.copyWith(fontSize: 28, fontWeight: FontWeight.w700),
      title: Text('Events'),
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

class ListEvent extends StatelessWidget {
  const ListEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        EventTile(),
      ],
    );
  }
}

class EventTile extends StatelessWidget {
  const EventTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: EdgeInsets.symmetric(horizontal: kSpaceS),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: kSpaceS),
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide()),
          ),
          child: Row(
            children: [
              Text('1'),
              Expanded(
                child: Row(
                  children: [
                    FlutterLogo(),
                    Column(
                      children: [
                        Text('Madam Luu'),
                        Text('Madam Luu'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Text('Madam Luu'),
                    Text('Madam Luu'),
                    Text('data')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
