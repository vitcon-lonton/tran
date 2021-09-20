part of 'news.dart';

class News {
  final String title;
  final String body;
  final String image;

  News({required this.title, required this.body, required this.image});

  factory News.new1() {
    return News(
      image: kPathNew1,
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur est volutpat id ut cursus venenatis ...',
    );
  }

  factory News.new2() {
    return News(
      image: kPathNew2,
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur est volutpat id ut cursus venenatis ...',
    );
  }

  static List<News> generated() {
    return [
      News.new1(),
      News.new2(),
      News.new2(),
      News.new1(),
      News.new1(),
      News.new2(),
      News.new1(),
      News.new2(),
    ];
  }
}

class NewsTile extends StatelessWidget {
  final News news;

  const NewsTile(this.news, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final body = news.body;
    final title = news.title;
    final image = news.image;

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
                child: Image.asset(image, fit: BoxFit.fill),
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
