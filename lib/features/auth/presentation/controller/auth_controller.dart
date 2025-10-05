
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wedding_app/features/auth/application/auth_service.dart';
import 'package:wedding_app/features/auth/data/models/login_params.dart';
import 'package:wedding_app/features/auth/data/repo/auth_repository.dart';
import 'package:wedding_app/src/network/exception/dio_exceptions.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<void> build() => null;

  Future<void> login(LoginParams params) async {
    state = const AsyncLoading();
    // try {
//  final authRepo = ref.watch(authRepositoryProvider);
//       final data = await authRepo.login(params);
     
//       if (data.hasSucceeded) {
//         // update guest status in memory to confirmed
//         // final updated = _guests.map((g) {
//         //   if (g.name == inviteeId) {
//         //     return g.copyWith(rsvpStatus: RsvpStatus.confirmed);
//         //   }
//         //   return g;
//         // }).toList();
//  await ref
//           .read(userDataProvider.notifier)
//           .setData(
//             data.data?.token??"",
//             data.data?.fullName ?? '',
//             data.data?.email ?? '',
//           );
//         // _guests = updated;
//         // return data;
//         state = AsyncData(null);
//       } else {
//         debugPrint("kjgfghhjlk.mnb");
//         state = AsyncError(
//           data.message ?? "Check-in failed",
//           StackTrace.current,
//         );
//         // return data;
//       }
      
//     } catch (e, st) {
//       state = AsyncError(e, st);
//       throw AppException("message");
//     }
    state = await AsyncValue.guard(() async {
      final authRepo = ref.watch(authRepositoryProvider);
      final data = await authRepo.login(params);
       if (data.hasSucceeded) {
      await ref
          .read(userDataProvider.notifier)
          .setData(
            data.data!.token,
            data.data?.fullName ?? '',
            data.data?.email ?? '',
          );
       }
          (err)=>AsyncError(data.message??"Error occured wrong pasword or email", StackTrace.current);
    });
  }

  Future<void> logout() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      ref.read(userDataProvider.notifier).removeData();
    });
  }

  // Future<void> forgotPassword(String email) async {
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() async {
  //     final authRepo = ref.watch(authRepositoryProvider);
  //     await authRepo.forgotPassword(email);
  //   });
  // }
}
