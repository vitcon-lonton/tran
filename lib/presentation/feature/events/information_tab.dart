part of 'events.dart';

class InformationTab extends StatelessWidget {
  const InformationTab({Key? key}) : super(key: key);

  Widget item(String text, {BorderRadius? radius, EdgeInsets? padding}) {
    return ListTile(
      onTap: () {},
      contentPadding: padding,
      trailing: Icon(Icons.keyboard_arrow_right_sharp),
      title: Text(text, style: kBodyMedium.copyWith(fontSize: 14)),
      shape: RoundedRectangleBorder(
          borderRadius: radius ?? BorderRadius.zero, side: BorderSide.none),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kSpaceM),
      child: Column(
        children: [
          kVSpaceXXL,
          Ink(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: kBorderRadius,
              border: Border.fromBorderSide(kBorderSide),
            ),
            child: Column(
              children: [
                item(
                  'Create Team',
                  radius: kBorderRadius.copyWith(
                      bottomLeft: Radius.zero, bottomRight: Radius.zero),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ).copyWith(top: kSpaceXS),
                ),
                const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceL),
                item('Create Membership', radius: BorderRadius.zero),
                const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceL),
                item('Add Member', radius: BorderRadius.zero),
                const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceL),
                item('Create League', radius: BorderRadius.zero),
                const Divider(height: 0, indent: kSpaceM, endIndent: kSpaceL),
                item(
                  'Manage Members',
                  radius: kBorderRadius.copyWith(
                      topLeft: Radius.zero, topRight: Radius.zero),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ).copyWith(bottom: kSpaceXS),
                ),
              ],
            ),
          ),
          kVSpaceL,
        ],
      ),
    );
  }
}
