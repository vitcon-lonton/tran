part of 'events.dart';

class EventsAB extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;

  const EventsAB({Key? key, this.bottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      bottom: bottom,
      centerTitle: false,
      title: Text('Events'),
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData.fallback(),
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

class EventTile extends StatelessWidget {
  final int index;

  const EventTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: EdgeInsets.symmetric(horizontal: kSpaceS, vertical: kSpaceS),
        child: Row(
          children: [
            kHSpaceXXS,
            Text('1',
                style: kBodyMedium.copyWith(fontSize: 14, color: primaryColor)),
            kHSpaceXXS,
            Flexible(
              child: Row(
                children: [
                  FlutterLogo(size: 40),
                  kHSpaceXS,
                  Expanded(
                    child: DefaultTextStyle(
                      maxLines: 1,
                      style:
                          kBody3.copyWith(color: Colors.black54, fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Madam Luu',
                            style: kBodyMedium.copyWith(
                                fontSize: 16, color: primaryColor),
                          ),
                          Text('Hawaii, California California California',
                              maxLines: 1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            kHSpaceS,
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('21.23'),
                  Text('111.86'),
                  Text('9.678'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
