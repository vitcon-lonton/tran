part of 'home.dart';

class WNavItem extends PersistentBottomNavBarItem {
  WNavItem(
    String title,
    Widget icon,
    Widget inactiveIcon,
  ) : super(
          icon: icon,
          // title: title,
          // contentPadding: 20,
          inactiveIcon: inactiveIcon,
          activeColorPrimary: kColorPrimary,
          activeColorSecondary: kColorPrimary,
          inactiveColorSecondary: kColorPrimary,
          // textStyle: kBodyMedium.copyWith(fontSize: 14),
          textStyle: kBodyMedium.copyWith(fontSize: 0, height: 0),
          iconBuilder: (selected, icon) {
            return Container(
              // color: Colors.amber,
              width: 60,
              // width: double.maxFinite,
              height: 70,
              // width: 50,
              // curve: Curves.ease,
              // duration: const Duration(milliseconds: 150),
              // child: selected ? icon : inactiveIcon,
              child: Column(
                children: [
                  selected ? icon : inactiveIcon,
                  Spacer(),
                  Text(
                    title,
                    style: kBodyMedium.copyWith(fontSize: 14).copyWith(
                        color: selected ? Colors.black : Color(0xFFDADADA)),
                  )
                ],
              ),
            );
            // return icon;
          },
          inactiveColorPrimary: Color(0xFFDADADA),
        );
}
