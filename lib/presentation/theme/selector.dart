part of 'theme.dart';

class CitySelector extends StatefulWidget {
  @override
  _CitySelectorState createState() => _CitySelectorState();
}

class _CitySelectorState extends State<CitySelector> {
  String? _day = 'fri';
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _day);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmartSelect<String?>.single(
      title: '',
      choiceItems: days,
      selectedValue: _day,
      modalType: S2ModalType.fullPage,
      onChange: (selected) {
        _controller.text = selected.value ?? '';
        setState(() => _day = selected.value);
      },
      tileBuilder: (_, state) {
        return WTextInput(
          label: 'City',
          readOnly: true,
          onTap: state.showModal,
          hintText: 'Select city',
          controller: _controller,
          suffixIcon: Icon(Icons.keyboard_arrow_down, size: 18),
        );
      },
    );
  }
}

class CountrySelector extends StatefulWidget {
  @override
  _CountrySelectorState createState() => _CountrySelectorState();
}

class _CountrySelectorState extends State<CountrySelector> {
  String? _day = 'fri';
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _day);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmartSelect<String?>.single(
      title: '',
      choiceItems: days,
      selectedValue: _day,
      modalType: S2ModalType.fullPage,
      onChange: (selected) {
        _controller.text = selected.value ?? '';
        setState(() => _day = selected.value);
      },
      tileBuilder: (_, state) {
        return WTextInput(
          label: 'Country',
          readOnly: true,
          onTap: state.showModal,
          hintText: 'Select country',
          controller: _controller,
          suffixIcon: Icon(Icons.keyboard_arrow_down, size: 18),
        );
      },
    );
  }
}

class BirthDaySelector extends StatefulWidget {
  @override
  _BirthDaySelectorState createState() => _BirthDaySelectorState();
}

class _BirthDaySelectorState extends State<BirthDaySelector> {
  String? _day = 'fri';
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _day);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmartSelect<String?>.single(
      title: '',
      choiceItems: days,
      selectedValue: _day,
      modalType: S2ModalType.fullPage,
      onChange: (selected) {
        _controller.text = selected.value ?? '';
        setState(() => _day = selected.value);
      },
      tileBuilder: (_, state) {
        return WTextInput(
          readOnly: true,
          label: 'Date of birth',
          onTap: state.showModal,
          controller: _controller,
          hintText: 'Select date of birth',
          suffixIcon: Icon(Icons.calendar_today_outlined, size: 18),
        );
      },
    );
  }
}

class GenderSelector extends StatefulWidget {
  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? _day = 'fri';
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _day);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmartSelect<String?>.single(
      title: '',
      choiceItems: days,
      selectedValue: _day,
      modalType: S2ModalType.fullPage,
      onChange: (selected) {
        _controller.text = selected.value ?? '';
        setState(() => _day = selected.value);
      },
      tileBuilder: (_, state) {
        return WTextInput(
          readOnly: true,
          label: 'Gender',
          onTap: state.showModal,
          controller: _controller,
          hintText: 'Select gender',
          suffixIcon: Icon(Icons.keyboard_arrow_down, size: 18),
        );
      },
    );
  }
}
