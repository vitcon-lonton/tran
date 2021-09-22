// ignore_for_file: invalid_annotation_target

/* spell-checker: disable */
part of 'auth.dart';

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData({
    String? email,
    String? password,
    String? userType,
    String? apptype,
    String? mobile,
    String? nameFirst,
    String? nameLast,
    String? gender,
    double? height,
    double? weight,
    DateTime? dob,
    String? city,
    String? country,
    bool? heightWeight,
  }) = _RegisterData;

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}

@freezed
class ChangePasswordData with _$ChangePasswordData {
  const factory ChangePasswordData(
      {String? userId,
      String? password,
      String? newPassword,
      String? apptype}) = _ChangePasswordData;

  factory ChangePasswordData.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordDataFromJson(json);
}

@freezed
class GoogleAuthData with _$GoogleAuthData {
  const factory GoogleAuthData(
      {String? googleId,
      String? email,
      String? fullName,
      String? givenName,
      String? familyName,
      String? imageUrl}) = _GoogleAuthData;

  factory GoogleAuthData.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthDataFromJson(json);
}

@freezed
class AppleAuthData with _$AppleAuthData {
  const factory AppleAuthData({String? code, String? fullName}) =
      _AppleAuthData;

  factory AppleAuthData.fromJson(Map<String, dynamic> json) =>
      _$AppleAuthDataFromJson(json);
}

@freezed
class FBAuthData with _$FBAuthData {
  const factory FBAuthData({String? userId, String? accessToken}) = _FBAuthData;

  factory FBAuthData.fromJson(Map<String, dynamic> json) =>
      _$FBAuthDataFromJson(json);
}

@freezed
class EmailAuthData with _$EmailAuthData {
  const factory EmailAuthData({
    String? email,
    String? password,
    String? userType,
    String? apptype,
  }) = _EmailAuthData;

  factory EmailAuthData.fromJson(Map<String, dynamic> json) =>
      _$EmailAuthDataFromJson(json);
}

@freezed
class Credential with _$Credential {
  const factory Credential({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    String? password,
    dynamic apptype,
    String? city,
    String? country,
    @JsonKey(name: '__v') int? v,
    @JsonKey(name: 'heightWeight') String? heightWeight,
    String? randomPaswordCheckin,
    String? subscriptionTransId,
    dynamic transactions,
    bool? tokenIssued,
    String? serialNumber,
    String? imeiNumber,
    String? wallet,
    bool? isSubscribed,
    dynamic devicetoken,
    String? socialId,
    String? imageUrl,
    DateTime? dob,
    String? mobile,
    String? weight,
    String? height,
    String? gender,
    String? nameLast,
    String? nameFirst,
    String? username,
    String? email,
    String? authtoken,
    String? userType,
  }) = _Credential;

  factory Credential.fromJson(Map<String, dynamic> json) =>
      _$CredentialFromJson(json);
}

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    String? userId,
    bool? isSuccess,
    String? confirmEmailToken,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@freezed
class ForgotPasswordResponse with _$ForgotPasswordResponse {
  const factory ForgotPasswordResponse(
      String userId, String token, int resultCode) = _ForgotPasswordResponse;

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);
}
