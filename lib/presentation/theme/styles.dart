part of 'theme.dart';

const kFontName = 'Roboto';
const kRbt = TextStyle(fontFamily: kFontName, color: Colors.black);
const kRbtC = TextStyle(fontFamily: 'RobotoCondensed', color: Colors.black);

final kHeadline1 = kRbt.copyWith(fontSize: 22, fontWeight: FontWeight.w500);
// [Bold or w700]
final kHeadline2 = kRbt.copyWith(fontSize: 20, fontWeight: FontWeight.w700);

final kTitle1 = kRbtC.copyWith(fontSize: 28, fontWeight: FontWeight.bold);
final kTitleBold = kRbt.copyWith(fontSize: 16, fontWeight: FontWeight.bold);

final kBodyRegular = kRbt.copyWith(fontSize: 14);
final kBodyRegular12 = kRbt.copyWith(fontSize: 12);
final kBodyRegular16 = kRbt.copyWith(fontSize: 16);
final kBodyBold = kRbt.copyWith(fontSize: 14, fontWeight: FontWeight.bold);
final kBodyMedium = kRbt.copyWith(fontSize: 12, fontWeight: FontWeight.w500);

/// Body
final kBody1 = kRbt.copyWith(fontSize: 16, fontWeight: FontWeight.bold);
final kBody2 = kRbt.copyWith(fontSize: 16);
final kBody3 = kRbt.copyWith(fontSize: 12);

final kCaption1 = kRbt.copyWith(fontSize: 14, fontWeight: FontWeight.bold);
final kCaption2 = kRbt.copyWith(fontSize: 14);

// Button
final kBTNTitle = kRbt.copyWith(fontSize: 18, fontWeight: FontWeight.bold);

/// Form
/// [TextInput]
final kTextInput = kRbt.copyWith(fontSize: 14, color: kColorGrey5);
final kTextInputHint = kTextInput.copyWith(color: kColorGrey2);
final kTextInputLabel =
    kRbt.copyWith(fontSize: 16, fontWeight: FontWeight.w500);
final kTextInputError = kTextInputHint.copyWith(color: Colors.red);

final kBorderRadius = BorderRadius.circular(12);
final kBorderSide = BorderSide(width: 1, color: kColorGrey3);

final kTabBarTheme = TabBarTheme(
  labelColor: kTitleBold.color,
  unselectedLabelColor: kColorGrey2,
  labelStyle: kTitleBold.copyWith(fontSize: 18),
  unselectedLabelStyle: kTitleBold.copyWith(fontSize: 18),
  indicator: BoxDecoration(
    border: Border(
      bottom: BorderSide(color: kColorPrimary, width: 2),
    ),
  ),
);
