part of 'activity.dart';

enum ActivityType { walking, cycling, vehicle }

enum ActivityStatus { none, running, process }

Map<ActivityType, String> activityLabels = {
  ActivityType.walking: 'Walking',
  ActivityType.cycling: 'Cycling',
  ActivityType.vehicle: 'Vehicle',
};

Map<ActivityType, Widget> activityIcons = {
  ActivityType.walking: Icon(Icons.nordic_walking_outlined),
  ActivityType.cycling: Icon(Icons.pedal_bike_outlined),
  ActivityType.vehicle: Icon(Icons.car_rental_rounded),
};

class ActivityAB extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;

  const ActivityAB({Key? key, this.bottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      bottom: bottom,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      titleTextStyle: kTitle1.copyWith(fontSize: 22),
      iconTheme: IconThemeData.fallback(),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Good Morning'),
          Text(
            'Monday, 01 Jun 2021',
            style: kTitle1.copyWith(fontSize: 14),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none_rounded),
        )
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}

class SessionActivity extends StatelessWidget {
  Widget group(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(title), kVSpaceXXS, Text(value)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kSpaceS, horizontal: kSpaceS),
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        color: Theme.of(context).primaryColor,
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: IconTheme(
          data: IconThemeData(color: Colors.white),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text('Session Activity'),
                    kVSpaceS,
                    Icon(Icons.emoji_people, size: 56),
                  ],
                ),
              ),
              kHSpaceS,
              Container(width: 0.4, height: 90, color: Colors.white),
              kHSpaceS,
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          group('Distance', '0.00 m'),
                          kVSpaceS,
                          group('Tokens', '0.000'),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          group('Calories', '0.00 cal'),
                          kVSpaceS,
                          group('Speed', '0 m/s'),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivitySelector extends StatefulWidget {
  final Function(ActivityType)? onChanged;

  ActivitySelector({Key? key, this.onChanged}) : super(key: key);

  @override
  _ActivitySelectorState createState() => _ActivitySelectorState();
}

class _ActivitySelectorState extends State<ActivitySelector> {
  ActivityType? _type;

  Widget button(ActivityType? type) {
    final active = _type == type;
    return Expanded(
      flex: 4,
      child: TextButton(
        onPressed: () => setState(() => _type = type),
        style: TextButton.styleFrom(
          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
          backgroundColor: active ? kColorGreen : kColorRed2,
          shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
        ),
        child: IconTheme(
          data: IconThemeData(size: 36, color: Colors.white),
          child: Column(
            children: [
              activityIcons[type] ?? kSpaceZero,
              kVSpaceXXS,
              Text(
                activityLabels[type] ?? '',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          button(ActivityType.walking),
          const Spacer(),
          button(ActivityType.cycling),
          const Spacer(),
          button(ActivityType.vehicle),
        ],
      ),
    );
  }
}

class ActivitySTT extends StatelessWidget {
  final ActivityStatus status;

  const ActivitySTT(this.status, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? text;
    Color? color;

    if (status == ActivityStatus.process) {
      text = 'Please wait while we are getting your accurate location';
      color = kColorOrange;
    } else if (status == ActivityStatus.running) {
      text = 'Activity tracker is running...';
      color = kColorGreen;
    }

    return Container(
      width: double.infinity,
      child: Text(text ?? '', style: TextStyle(color: color, fontSize: 12)),
      padding: EdgeInsets.symmetric(vertical: kSpaceS, horizontal: kSpaceM),
      decoration: BoxDecoration(
        color: color?.withOpacity(0.1) ?? Colors.white,
      ),
    );
  }
}

class _Wrapper extends StatelessWidget {
  final Widget child;

  const _Wrapper(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      padding: EdgeInsets.symmetric(vertical: kSpaceL, horizontal: kSpaceM),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: kBorderRadius,
        border: Border.fromBorderSide(kBorderSide),
      ),
    );
  }
}

class _Column extends StatelessWidget {
  final String title;
  final List<String>? values;

  const _Column(this.title, {Key? key, this.values}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: kTitleBold.copyWith(fontSize: 14, color: kColorPrimary)),
          ...?values
              ?.map((value) => [kVSpaceXXS, Text(value)])
              .expand((e) => e)
              .toList(),
        ],
      ),
    );
  }
}

class DailyChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Wrapper(
      Row(
        children: [
          _Column('Distance', values: ['0.0 km']),
          const Spacer(),
          _Column('Calories', values: ['0.0 cal']),
          const Spacer(),
          _Column('Time', values: ['0 m']),
        ],
      ),
    );
  }
}

class WeeklyActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Wrapper(
      Column(
        children: [
          DefaultTextStyle(
            style: kTitleBold.copyWith(color: kColorPrimary, fontSize: 14),
            child: Row(
              children: [
                Text('Mon'),
                const Spacer(),
                Text('Tue'),
                const Spacer(),
                Text('Wed'),
                const Spacer(),
                Text('Thu'),
                const Spacer(),
                Text('Fri'),
                const Spacer(),
                Text('Sat'),
                const Spacer(),
                Text('Sun'),
              ],
            ),
          ),
          kVSpaceXS,
          Divider(),
          kVSpaceXS,
          Row(
            children: [
              _Column(
                'Walking',
                values: ['D 763.17 m', 'C 58.82 cal', 'T 7.6317'],
              ),
              const Spacer(),
              _Column(
                'Cycling',
                values: ['D 0.00 m', 'C 0.00 cal', 'T 0.000'],
              ),
              const Spacer(),
              _Column(
                'Vehicle',
                values: ['D 20.47 km', 'C 53.04 cal', 'T 2.0466'],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OverallActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Wrapper(
      Row(
        children: [
          _Column(
            'Walking',
            values: ['D 763.17 m', 'C 58.82 cal', 'T 7.6317'],
          ),
          const Spacer(),
          _Column(
            'Cycling',
            values: ['D 0.00 m', 'C 0.00 cal', 'T 0.000'],
          ),
          const Spacer(),
          _Column(
            'Vehicle',
            values: ['D 20.47 km', 'C 53.04 cal', 'T 2.0466'],
          ),
        ],
      ),
    );
  }
}

class MonthlyOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      child: _Wrapper(
        GroupedBarChart.withSampleData(),
      ),
    );
  }
}

class GroupedBarChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool? animate;

  GroupedBarChart(this.seriesList, {this.animate});

  factory GroupedBarChart.withSampleData() {
    return GroupedBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final caloriesData = [
      OrdinalSales('Jan', 5),
      OrdinalSales('Feb', 25),
      OrdinalSales('Mar', 100),
      OrdinalSales('Apr', 75),
      OrdinalSales('May', 11),
      OrdinalSales('Jun', 100),
      OrdinalSales('Jul', 80),
      OrdinalSales('Aug', 25),
      OrdinalSales('Apr', 75),
    ];

    final tokensData = [
      OrdinalSales('Jan', 25),
      OrdinalSales('Feb', 50),
      OrdinalSales('Mar', 10),
      OrdinalSales('Apr', 20),
      OrdinalSales('May', 89),
      OrdinalSales('Jun', 75),
      OrdinalSales('Jul', 23),
      OrdinalSales('Aug', 75),
      OrdinalSales('Apr', 56),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Calories',
        data: caloriesData,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        colorFn: (OrdinalSales sales, _) =>
            charts.Color.fromHex(code: '#244495'),
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Tokens',
        data: tokensData,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        colorFn: (OrdinalSales sales, _) =>
            charts.Color.fromHex(code: '#27AE60'),
      ),
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

class WarningBox extends StatelessWidget {
  const WarningBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kSpaceXXL),
      decoration: BoxDecoration(
        color: Color(0xffFFD04C),
        borderRadius: kBorderRadius,
        border: Border.fromBorderSide(kBorderSide.copyWith(width: 0.6)),
      ),
      child: Column(
        children: [
          kVSpaceL,
          kIcCar,
          kVSpaceL,
          Text('Warning!'),
          kVSpaceXS,
          Text('You\'re going to fast'),
          kVSpaceL,
          Text('tran ME should be played fairly'),
          kVSpaceL,
          Container(
            height: 48,
            width: double.infinity,
            child: WSubmitBtn(
              onPressed: () {},
              child: Text('Confirm'),
              radius: BorderRadius.circular(6.0),
            ),
          ),
          kVSpaceL,
        ],
      ),
    );
  }
}

class PlottingForm extends StatelessWidget {
  const PlottingForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background.gradient(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kSpaceM),
        child: Form(
          child: Column(
            children: [
              kVSpaceXL,
              kImgRedbelly,
              kVSpaceXL,
              WTextInput(
                label: 'Street name',
                onChanged: (value) {},
              ),
              kVSpaceXS,
              WTextInput(
                label: 'Postcode/ZipCode ',
                onChanged: (value) {},
              ),
              kVSpaceL,
              WTextInput(
                label: 'Latitude',
                onChanged: (value) {},
              ),
              kVSpaceXS,
              WTextInput(
                label: 'Longitude',
                onChanged: (value) {},
              ),
              kVSpaceXXL,
              Container(
                height: 48,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: kSpaceL),
                child: WSubmitBtn(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
              ),
              kVSpaceXL,
            ],
          ),
        ),
      ),
    );
  }
}
