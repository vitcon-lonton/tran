part of 'events.dart';

class InformationTab extends StatelessWidget {
  const InformationTab({Key? key}) : super(key: key);

  Widget item(String text, {BorderRadius? radius}) {
    return ListTile(
      trailing: Icon(Icons.keyboard_arrow_right_sharp),
      shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
      title: Text(text, style: kBodyMedium.copyWith(fontSize: 14)),
      onTap: () {},
      // contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kSpaceM),
      child: Column(
        children: [
          kVSpaceL,
          ClipRRect(
            borderRadius: kBorderRadius,
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kBorderRadius,
                border: Border.fromBorderSide(kBorderSide),
              ),
              child: Column(
                children: [
                  const Divider(height: 0),
                  item('Create Team'),
                  const Divider(height: 0),
                  item('Create Membership'),
                  const Divider(height: 0),
                  item('Add Member'),
                  const Divider(height: 0),
                  item('Create League'),
                  const Divider(height: 0),
                  item('Manage Members'),
                  const Divider(height: 0),
                ],
              ),
            ),
          ),
          kVSpaceL,
        ],
      ),
    );
  }
}
