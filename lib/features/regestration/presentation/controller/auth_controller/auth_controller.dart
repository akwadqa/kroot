// import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../../../application/auth_service.dart';
// import '../../../data/auth_repository.dart';

// part 'auth_controller.g.dart';

// @riverpod
// class AuthController extends _$AuthController {
//   @override
//   FutureOr<void> build() => null;

//   Future<void> _authenticate(
//     Future<void> Function(AuthRepository authRepo) action,
//   ) async {
//     state = const AsyncLoading();
//     state = await AsyncValue.guard(() async {
//       final authRepo = ref.watch(authRepositoryProvider);
//       await action(authRepo);
//     });
//   }

//   Future<void> login(String phone) async {
//     await _authenticate((authRepo) => authRepo.login(phone));
//   }

//   Future<void> signup(
//     String email,
//     String name,
//     String phone,
//   ) async {
//     await _authenticate(
//       (authRepo) => authRepo.signup(email, name, phone),
//     );
//   }
// }
