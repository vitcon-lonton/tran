part of 'news.dart';

class NewsTile extends StatelessWidget {
  final bool online;

  const NewsTile({Key? key, this.online = false}) : super(key: key);

  final title = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.';
  final body =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur est volutpat id ut cursus venenatis ...';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: EdgeInsets.symmetric(horizontal: kSpaceS),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: kBorderRadius,
              child: Container(
                height: 150,
                width: double.infinity,
                child: Background.gradient(child: kVSpaceM),
              ),
            ),
            kVSpaceS,
            Text(
              title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: kBodyMedium.copyWith(fontSize: 16),
            ),
            kVSpaceXS,
            Text(body,
                maxLines: 4,
                style: kBodyRegular12,
                overflow: TextOverflow.ellipsis),
            kVSpaceXS,
            Row(
              children: [
                Icon(Icons.access_time_rounded, size: 12, color: primaryColor),
                kHSpaceXXS,
                Text(
                  '8:00am, 21 May 2020',
                  style: kBody3.copyWith(color: Colors.black54, fontSize: 12),
                ),
                const Spacer(),
                Text('View more',
                    style: kBodyMedium.copyWith(color: primaryColor)),
              ],
            ),
            kVSpaceXS,
            kVSpaceS,
          ],
        ),
      ),
    );
  }
}
