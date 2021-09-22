part of 'auth.dart';

@freezed
class User with _$User {
  const factory User({required UniqueId id}) = _User;
}
