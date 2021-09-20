part of 'news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final news = News.generated();

    return Scaffold(
      appBar: TabHeader(title: Text('News')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kVSpaceXS,
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: news.length,
              itemBuilder: (_, i) => NewsTile(news[i]),
              padding: EdgeInsets.only(bottom: kSpaceM, top: kSpaceXS),
            ),
          ),
        ],
      ),
    );
  }
}
