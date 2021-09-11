part of 'activity.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ActivityAB(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: ActivitySTT(ActivityStatus.process),
        ),
      ),
      body: ListView(
        children: [
          kVSpaceXS,
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: kSpaceS),
            children: [
              kVSpaceS,
              PlottingForm(),
              kVSpaceS,
              WarningBox(),
              kVSpaceS,
              MonthlyOverview(),
              kVSpaceS,
              SessionActivity(),
              kVSpaceS,
              Center(child: Text('Choose and start activity tracking')),
              kVSpaceS,
              ActivitySelector(onChanged: (type) {}),
              kVSpaceS,
              DailyChallenge(),
              kVSpaceS,
              WeeklyActivity(),
              kVSpaceS,
              OverallActivity(),
              kVSpaceS,
              MonthlyOverview(),
              kVSpaceS,
            ],
          ),
        ],
      ),
    );
  }
}
