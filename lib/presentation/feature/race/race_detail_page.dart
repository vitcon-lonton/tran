part of 'race.dart';

class RaceDetailPage extends StatelessWidget {
  const RaceDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabHeader(title: Text('Race')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kVSpaceXS,
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (_, i) => RaceTile(),
              padding: EdgeInsets.only(bottom: kSpaceM, top: kSpaceXS),
            ),
          ),
        ],
      ),
    );
  }
}
