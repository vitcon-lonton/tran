part of 'events.dart';

class InformationTab extends StatelessWidget {
  const InformationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kSpaceM),
      child: Column(
        children: [
          kVSpaceXXL,
          OptionsView(
            options: [
              OptionTile(
                'Create Team',
                height: 55,
                radius: kBorderRadius.copyWith(
                    bottomLeft: Radius.zero, bottomRight: Radius.zero),
                padding: EdgeInsets.only(top: kSpaceXS),
              ),
              OptionTile('Create Membership'),
              OptionTile('Add Member'),
              OptionTile('Create League'),
              OptionTile(
                'Manage Members',
                height: 55,
                radius: kBorderRadius.copyWith(
                    topLeft: Radius.zero, topRight: Radius.zero),
                padding: EdgeInsets.only(bottom: kSpaceXS),
              ),
            ],
          ),
          kVSpaceL,
        ],
      ),
    );
  }
}
