part of 'events.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: EventsAB(bottom: _TabBar()),
        body: TabBarView(
          children: [StandingTab(), InformationTab()],
        ),
      ),
    );
  }
}

class _TabBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(48);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: kSpaceS),
      child: TabBar(
        tabs: [Tab(text: 'Standings'), Tab(text: 'Information')],
      ),
    );
  }
}
