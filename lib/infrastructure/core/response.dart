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

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);

  bool get valid => (responseCode ?? 0) == 2000;
}
