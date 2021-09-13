part of 'race.dart';

class RacePage extends StatelessWidget {
  const RacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabHeader(title: Text('Race')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kVSpaceM,
          _LocationSelector(),
          kVSpaceXS,
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (_, i) => FriendTile(online: i < 3),
              padding: EdgeInsets.only(bottom: kSpaceM, top: kSpaceXS),
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationSelector extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kSpaceM),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: CitySelector()),
              kHSpaceL,
              Expanded(child: CountrySelector()),
            ],
          ),
          kVSpaceL,
          Text('Friends List', style: kBodyMedium.copyWith(fontSize: 16))
        ],
      ),
    );
  }
}
