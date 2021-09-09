part of 'theme.dart';

const kFontName = 'roboto';
const kDF = TextStyle(fontFamily: kFontName);

final kHeadline1 = kDF.copyWith(fontSize: 22, fontWeight: FontWeight.w500);
final kHeadline2 = kDF.copyWith(fontSize: 18, fontWeight: FontWeight.w500);

final kTitle1 = kDF.copyWith(
    fontFamily: 'RobotoCondensed', fontSize: 28, fontWeight: FontWeight.bold);
final kTitleMedium = kDF.copyWith(fontSize: 16, fontWeight: FontWeight.bold);

final kBodyRegular = kDF.copyWith(fontSize: 14);
final kBodyRegular12 = kDF.copyWith(fontSize: 12);
final kBodyRegular16 = kDF.copyWith(fontSize: 16);
final kBodyBold = kDF.copyWith(fontSize: 14, fontWeight: FontWeight.bold);
final kBodyMedium = kDF.copyWith(fontSize: 12, fontWeight: FontWeight.w500);

/// Body
final kBody1 = kDF.copyWith(fontSize: 16, fontWeight: FontWeight.bold);
final kBody2 = kDF.copyWith(fontSize: 16);
final kBody3 = kDF.copyWith(fontSize: 12);

final kCaption1 = kDF.copyWith(fontSize: 14, fontWeight: FontWeight.bold);
final kCaption2 = kDF.copyWith(fontSize: 14);

/// Form
/// [TextInput]
final kTextInput = kDF.copyWith(fontSize: 14, color: kColorGrey5);
final kTextInputHint = kTextInput.copyWith(color: kColorGrey2);
final kTextInputLabel = kDF.copyWith(fontSize: 16, fontWeight: FontWeight.w500);
final kTextInputError = kTextInputHint.copyWith(color: Colors.red);
