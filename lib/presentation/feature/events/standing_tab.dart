part of 'events.dart';

class StandingTab extends StatelessWidget {
  const StandingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListEventHeader(),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (_, i) {
                return EventTile(index: i + 1);
              },
              separatorBuilder: (_, i) {
                return const Divider(
                    height: 0, indent: kSpaceS, endIndent: kSpaceS);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ListEventHeader extends StatelessWidget {
  const ListEventHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kSpaceS),
      child: Column(
        children: [
          kVSpaceS,
          Row(
            children: [
              kHSpaceXS,
              const Text(''),
              kHSpaceXS,
              const Spacer(),
              kHSpaceS,
              kHSpaceS,
              Flexible(
                child: DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style:
                      kBodyMedium.copyWith(fontSize: 16, color: kColorPrimary),
                  child: Row(
                    children: [
                      Text('D'),
                      Text('C'),
                      Text('T'),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
              ),
            ],
          ),
          kVSpaceS,
          const Divider(height: 0),
        ],
      ),
    );
  }
}
