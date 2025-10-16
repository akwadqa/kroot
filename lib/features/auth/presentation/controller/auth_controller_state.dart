// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:wedding_app/features/auth/data/models/send_otp/send_otp_response.dart';
import 'package:wedding_app/features/auth/data/models/verify_otp/verify_otp_response.dart';

class AuthControllerState {
  final SendOtpResponse? sendOtpResponse;
  final VerifyOtpResponse? verifyOtpResponse;

  AuthControllerState({ this.sendOtpResponse, this.verifyOtpResponse});

  AuthControllerState copyWith({
    SendOtpResponse? sendOtpResponse,
    VerifyOtpResponse? verifyOtpResponse,
  }) {
    return AuthControllerState(
      sendOtpResponse: sendOtpResponse ?? this.sendOtpResponse,
      verifyOtpResponse: verifyOtpResponse ?? this.verifyOtpResponse,
    );
  }
}
