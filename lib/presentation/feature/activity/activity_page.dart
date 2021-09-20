part of 'activity.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  // var _type;
  var _status = ActivityStatus.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ActivityAB(
        bottom: _status == ActivityStatus.none
            ? PreferredSize(
                child: Container(), preferredSize: Size.fromHeight(20))
            : PreferredSize(
                child: ActivitySTT(_status),
                preferredSize: Size.fromHeight(50)),
      ),
      body: ListView(
        children: [
          kVSpaceXS,
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: kSpaceS),
            children: [
              // WarningBox(),
              // kVSpaceS,
              // PlottingForm(),
              // kVSpaceS,
              // kVSpaceS,
              // MonthlyOverview(),
              kVSpaceS,
              SessionActivity(_status),
              kVSpaceM,
              ActivitySelector(
                onChanged: (type) {
                  setState(() {
                    // _type = type;
                    _status = type == null
                        ? ActivityStatus.none
                        : ActivityStatus.process;
                  });
                },
              ),
              kVSpaceM,
              title('Daily Challenge'),
              DailyChallenge(),
              kVSpaceM,
              title('Weekly Activity'),
              WeeklyActivity(),
              kVSpaceM,
              title('Overall Activity'),
              OverallActivity(),
              kVSpaceM,
              title('Monthly Overview'),
              MonthlyOverview(),
              kVSpaceXXL,
            ],
          ),
        ],
      ),
    );
  }

  Widget title(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Text(text,
          style: kTitleBold.copyWith(fontSize: 14, color: Colors.black87)),
    );
  }
}
