part of 'race.dart';

class FriendTile extends StatelessWidget {
  final bool online;

  const FriendTile({Key? key, this.online = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: EdgeInsets.symmetric(horizontal: kSpaceS, vertical: kSpaceS),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlutterLogo(size: 48),
            kHSpaceXS,
            Expanded(
              child: DefaultTextStyle(
                maxLines: 1,
                style: kBody3.copyWith(color: Colors.black54, fontSize: 14),
                overflow: TextOverflow.ellipsis,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Leslie Alexander',
                        style: kBodyMedium.copyWith(
                            fontSize: 16, color: primaryColor)),
                    Text('Hawaii, California California', maxLines: 1),
                  ],
                ),
              ),
            ),
            kHSpaceS,
            DefaultTextStyle(
              child: Text(online ? 'Online' : 'Offline'),
              style: TextStyle(color: online ? kColorGreen : kColorGrey1),
            ),
            kHSpaceM,
          ],
        ),
      ),
    );
  }
}

class RaceTile extends StatelessWidget {
  const RaceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.symmetric(horizontal: kSpaceM, vertical: kSpaceS),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ralph Edwards', style: kBodyMedium.copyWith(fontSize: 16)),
          kVSpaceXXS,
          SessionActivity(),
          Container(
            height: 190,
            decoration: BoxDecoration(
              color: Color(0xFFEDEDED),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset(0, 4), // changes position of shadow
                  color: Colors.black26,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SessionActivity extends StatelessWidget {
  Widget group(String title, String value) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kBodyMedium.copyWith(
                fontSize: 14, color: onPrimary, fontWeight: FontWeight.w800),
          ),
          kVSpaceXS,
          Text(value)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kSpaceXS, horizontal: kSpaceS),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: kBorderRadius,
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 12),
        child: Row(
          children: [
            group('Distance', '210.23 m'),
            group('Calories', '153.20 cal'),
            group('Tokens', '21.023'),
            group('Speed', '1.23 m/s'),
          ],
        ),
      ),
    );
  }
}
