part of 'events.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: EventsAB(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kSpaceS),
              child: TabBar(
                tabs: [
                  Tab(text: 'Standings'),
                  Tab(text: 'Information'),
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            kVSpaceXS,
            Column(
              children: [
                kVSpaceS,
                kVSpaceS,
                kVSpaceS,
                ListEvent(),
                kVSpaceS,
                kVSpaceS,
                kVSpaceS,
                kVSpaceS,
                kVSpaceS,
                kVSpaceS,
                kVSpaceS,
                kVSpaceS,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
