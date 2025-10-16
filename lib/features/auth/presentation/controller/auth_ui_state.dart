// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthUiState {
  final bool isAgree, isValidate,isPhoneFilled;

  AuthUiState({required this.isAgree, required this.isValidate , required this.isPhoneFilled});

  factory AuthUiState.initial() =>
      AuthUiState(isAgree: false, isValidate: false,isPhoneFilled: false);

  AuthUiState copyWith({bool? isAgree, bool? isValidate ,bool? isPhoneFilled}) {
    return AuthUiState(
      isValidate: isValidate ?? this.isValidate,
      isAgree: isAgree ?? this.isAgree,
      isPhoneFilled: isPhoneFilled ?? this.isPhoneFilled,
    );
  }
}
