// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) =>
    _VerifyOtpResponse(
      userId: json['userId'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      mobileNo: json['mobileNo'] as String?,
      token: json['token'] as String?,
      validation: json['validation'] == null
          ? null
          : ValidationData.fromJson(json['validation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyOtpResponseToJson(_VerifyOtpResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'mobileNo': instance.mobileNo,
      'token': instance.token,
      'validation': instance.validation,
    };

_ValidationData _$ValidationDataFromJson(Map<String, dynamic> json) =>
    _ValidationData(
      mobileNumber: json['mobileNumber'] as String?,
      userExist: json['userExist'] as bool?,
      userEnabled: json['userEnabled'] as bool?,
      otpValid: json['otpValid'] as bool?,
    );

Map<String, dynamic> _$ValidationDataToJson(_ValidationData instance) =>
    <String, dynamic>{
      'mobileNumber': instance.mobileNumber,
      'userExist': instance.userExist,
      'userEnabled': instance.userEnabled,
      'otpValid': instance.otpValid,
    };
