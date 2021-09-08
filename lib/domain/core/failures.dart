import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength(
      {required T failedValue, required int max}) = ExceedingLength<T>;
  const factory ValueFailure.notAchievedLength(
      {required T failedValue, required int min}) = NotAchievedLength<T>;
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ValueFailure.numeric({required T failedValue}) = Numeric<T>;
  const factory ValueFailure.multiLine({required T failedValue}) = MultiLine<T>;
  const factory ValueFailure.listTooLong(
      {required T failedValue, required int max}) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({required T failedValue}) =
      ShortPassword<T>;
  const factory ValueFailure.other({required T failedValue}) = Other<T>;
}

@freezed
abstract class LanguageFailure with _$LanguageFailure {
  const factory LanguageFailure.notFound() = LanguageFailureNotFound;
}
