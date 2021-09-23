part of 'core.dart';

@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class BaseResponse<T> {
  BaseResponse({
    this.responseCode,
    this.responseMessage,
    this.responseData,
  });

  final int? responseCode;
  final String? responseMessage;
  final T? responseData;

  bool get valid => responseCode == 2000;

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);
}
