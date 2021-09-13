part of 'news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabHeader(title: Text('News')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kVSpaceXS,
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (_, i) => NewsTile(),
              padding: EdgeInsets.only(bottom: kSpaceM, top: kSpaceXS),
            ),
          ),
        ],
      ),
    );
  }
}
