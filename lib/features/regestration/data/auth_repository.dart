// import 'package:ahtizam_driver/src/network/services/dio_client.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../../../../constants/Api/end_points.dart';
// import '../../../../network/services/network_service.dart';

// part 'auth_repository.g.dart';

// @Riverpod(keepAlive: true)
// AuthRepository authRepository(Ref ref) =>
//     AuthRepository(ref.watch(networkServiceProvider()));

// class AuthRepository {
//   final NetworkService _networkService;

//   AuthRepository(this._networkService);

//   /// Handle API response and only allow access to message and status_code
//   Future<String> _handleAuthResponse(Map<String, dynamic> responseData) async {
//     final int? statusCode = responseData['status_code'];
//     final String? message = responseData['message'];

//     if (statusCode == 200) {
//       return message ?? '';
//     } else {
//       throw Exception(message ?? "An unknown error occurred");
//     }
//   }

//   /// Login API request
//   Future<String> login(String phone) async {
//     final response = await _networkService.post(EndPoints.loginApi, data:  {
//       'mobile_no': phone,
//     },
//     );

//     return await _handleAuthResponse(response.data);
//   }

//   /// Signup API request
//   Future<String> signup(
//     String email,
//     String name,
//     String phone,
//   ) async {
//     final response = await _networkService.post(EndPoints.registerApi, data:  {
//       'email': email,
//       'name': name,
//       'mobile_no': phone,
//     });

//     return await _handleAuthResponse(response.data);
//   }
// }
