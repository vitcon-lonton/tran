part of 'events.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabHeader(bottom: _TabBar(), title: Text('Events')),
        body: TabBarView(children: [StandingTab(), InformationTab()]),
      ),
    );
  }
}

class _TabBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(48);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: kSpaceM),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: kColorGrey2, width: 1.0),
            ),
          ),
        ),
        TabBar(
          padding: EdgeInsets.symmetric(horizontal: kSpaceM),
          tabs: [
            Tab(text: 'Standings'),
            Tab(text: 'Information'),
          ],
          // indicatorPadding: EdgeInsets.only(left: kSpaceM),
          // labelPadding: ,
          // indicatorPadding: ,

          // indicator: UnderlineTabIndicator(
          //     // borderSide: BorderSide(),
          //     // insets: EdgeInsets.symmetric(horizontal: kSpaceM),
          //     ),
        ),
      ],
    );
  }
}
