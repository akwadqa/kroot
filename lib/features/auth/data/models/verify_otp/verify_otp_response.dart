// lib/models/user_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response.freezed.dart';
part 'verify_otp_response.g.dart';

@freezed
abstract class VerifyOtpResponse with _$VerifyOtpResponse {
  const factory VerifyOtpResponse({
    String? userId,
    String? firstName,
    String? lastName,
    String? email,
    String? mobileNo,
    String? token,
    ValidationData? validation,
  }) = _VerifyOtpResponse;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);
}

@freezed
abstract class ValidationData with _$ValidationData {
  const factory ValidationData({
    String? mobileNumber,
    bool? userExist,
    bool? userEnabled,
    bool? otpValid,
  }) = _ValidationData;

  factory ValidationData.fromJson(Map<String, dynamic> json) =>
      _$ValidationDataFromJson(json);
}
