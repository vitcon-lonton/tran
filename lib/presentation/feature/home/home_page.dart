// ignore_for_file: dead_code

part of 'home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _index = 0;
  DateTime? _lastPressedAt;
  List<int> _nav = <int>[0];
  final _controller = PersistentTabController(initialIndex: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final title = _title();

    return Scaffold(
      // appBar: TabHeader(title: Text(title), backgroundColor: kColorGrey7),
      backgroundColor: kColorGrey7,
      body: PersistentTabView(
        context,
        navBarHeight: 60,
        // navBarHeight: 70,
        onWillPop: onPop,
        controller: _controller,
        // bottomScreenMargin: 40,
        navBarStyle: NavBarStyle.simple,
        popActionScreens: PopActionScreensType.all,
        // backgroundColor: Colors.black45,
        // padding: NavBarPadding.only(top: 0),
        // padding: NavBarPadding.all(0),
        screenTransitionAnimation: ScreenTransitionAnimation(
          curve: Curves.easeIn,
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
        ),
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.transparent,
          borderRadius: BorderRadius.vertical(top: Radius.circular(17)),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(0, -4),
              color: Colors.black.withOpacity(0.07),
            ),
          ],
        ),
        onItemSelected: (i) {
          final last = _nav.last;
          if (last != i) _nav..add(i);
          // setState(() {
          //   // _index = 1;
          // });
        },
        screens: [
          ActivityPage(),
          EventsPage(),
          RacePage(),
          NewsPage(),
          SettingsPage(),
        ],
        items: [
          // WNavItem(
          //     'Home',
          //     ImageIcon(
          //       AssetImage('assets/icons/ic_home.png'),
          //       size: 30,
          //     ),
          //     Container(width: 40, height: 40, color: Colors.black)),
          WNavItem('Home', kIcHome, kIcHome2),
          WNavItem('Events', kIcSolid, kIcOutline),
          WNavItem('Race', kIcList, kIcListOutline),
          WNavItem('News', kIcNewsSolid, kIcNewsOutline),
          WNavItem('Settings', kIcSetting, kIcSettings),
        ],
      ),
    );
  }

  onPressNavItem(int i) {
    if (_nav.last == i) return;

    _nav.add(i);

    return _controller.jumpToTab(i);
  }

  onBack() {
    if (_nav.length < 2) return;

    _nav.removeRange(_nav.lastIndexOf(0) + 1, _nav.length);

    _controller.jumpToTab(0);
  }

  Future<bool> onPop(BuildContext? context) {
    // if (isShow()) return Future.value(false);
    if (_nav.length > 1) {
      _nav.removeLast();
      _controller.jumpToTab(_nav.last);

      return Future.value(false);
    } else if (_lastPressedAt == null ||
        DateTime.now().difference(_lastPressedAt!) > Duration(seconds: 1)) {
      _lastPressedAt = DateTime.now();

      return Future.value(false);
    }

    return Future.value(true);
  }
}
