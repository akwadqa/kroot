// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:wedding_app/features/auth/data/models/create_account/create_account_response.dart';
import 'package:wedding_app/features/auth/data/models/send_otp/send_otp_response.dart';
import 'package:wedding_app/features/auth/data/models/verify_otp/verify_otp_response.dart';

class AuthControllerState {
  final SendOtpResponse? sendOtpResponse;
  final VerifyOtpResponse? verifyOtpResponse;
  final CreateAccountResponse? createAccountResponse;

  AuthControllerState({ this.sendOtpResponse, this.verifyOtpResponse,this.createAccountResponse});

  AuthControllerState copyWith({
    SendOtpResponse? sendOtpResponse,
    VerifyOtpResponse? verifyOtpResponse,
    CreateAccountResponse? createAccountResponse,
  }) {
    return AuthControllerState(
      createAccountResponse: createAccountResponse ?? this.createAccountResponse,
      sendOtpResponse: sendOtpResponse ?? this.sendOtpResponse,
      verifyOtpResponse: verifyOtpResponse ?? this.verifyOtpResponse,
    );
  }
}
