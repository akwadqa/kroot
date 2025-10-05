import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wedding_app/features/guests/data/repositories/guests_repository.dart';
import 'package:wedding_app/features/guests/domain/model/guest_model.dart';
import 'package:wedding_app/features/scan_qr_code/data/repositories/scan_driver_qr_repository.dart';
import 'package:wedding_app/features/scan_qr_code/domain/model/checkin_models.dart';
import 'package:wedding_app/src/constants/Api/api_response.dart';

part 'guests_controller.g.dart';

@riverpod
class GuestsController extends _$GuestsController {
  List<GuestModel> _guests = [];
  int _currentPage = 1;
  int _totalPages = 1;
  String? _query;
  RsvpStatus? _filter;
  Timer? _debounce;
  @override
  FutureOr<List<GuestModel>> build() async {
    return await fetchGuestsData(page: 1);
  }

  Future<List<GuestModel>> fetchGuestsData({
    required int page,
    bool showLoading = true,
    String? search,
    RsvpStatus? statusFilter,
  }) async {
    try {
      if (showLoading) state = const AsyncLoading();

      final repo = ref.read(guestsRepositoryProvider);
      final response = await repo.getAllGuests(
        page: page,
        status: _filter ?? statusFilter,
        searchKey: _query ?? search,
      );

      // افترض أن الدالة ترجع كائن يحتوي على:
      // data: List<GuestModel>
      // pagination: {...}
      _currentPage = response.pagination?.currentPage ?? 0;
      _totalPages = response.pagination?.totalPages ?? 1;

      if (page == 1) {
        _guests = List.from(response.data!);
      } else {
        _guests = [..._guests, ...response.data!]; // 👈 new list
      }

      state = AsyncData(List.from(_guests));
      return _guests;
    } catch (e, st) {
      state = AsyncError(e, st);
      return [];
    }
  }

  Future<bool> loadNextPage() async {
    if (_currentPage >= _totalPages) return false;
    final nextPage = _currentPage + 1;
    final result = await fetchGuestsData(page: nextPage, showLoading: false);
    return result.isNotEmpty;
  }

  void setQuery(String q) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () {
      _query = q.trim();
      _restart();
    });
  }

  void setStatus(RsvpStatus? status) {
    _filter = status;
    _restart();
  }

  void _restart() {
    _currentPage = 1;
    _totalPages = 1;
    _guests.clear();
    fetchGuestsData(page: 1, showLoading: true);
  }

  Future<bool> refreshGuests() async {
    _guests.clear();
    _currentPage = 1;
    _totalPages = 1;
    await fetchGuestsData(page: 1);
    return true;
  }

  List<GuestModel> getFilteredOrders(RsvpStatus? status) {
    if (status == RsvpStatus.all) {
      return state.value!;
    }
    return state.value
            ?.where((order) => order.rsvpStatus.name == status?.name)
            .toList() ??
        [];
  }
}
// 
// features/guests/presentation/controller/guests_controller.dart
// import 'dart:async';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import '../../../domain/guest_model.dart';
// import '../../../domain/rsvp_status.dart';
// import '../../../data/guests_repository.dart';

// part 'guests_controller.g.dart';

// @riverpod
// class GuestsController extends _$GuestsController {
//   static const _limit = 20;
//   int _page = 1;
//   int _totalPages = 1;
//   final List<GuestModel> _items = [];

  // String _query = '';
  // RsvpStatus? _filter;
  // Timer? _debounce;

//   @override
//   FutureOr<List<GuestModel>> build() async {
//     return await _fetch(page: 1, showLoading: true);
//   }

//   Future<List<GuestModel>> _fetch({required int page, bool showLoading = false}) async {
//     try {
//       if (showLoading) state = const AsyncLoading();

//       final res = await ref.read(guestsRepositoryProvider).list(
//             page: page,
//             limit: _limit,
//             query: _query.isEmpty ? null : _query,
//             status: _filter,
//           );

//       if (!res.hasSucceeded) {
//         throw res.message ?? 'Failed to load guests';
//       }

//       _page = res.pagination?.page ?? page;
//       _totalPages = res.pagination?.totalPages ?? _totalPages;

//       if (page == 1) {
//         _items
//           ..clear()
//           ..addAll(res.data ?? const []);
//       } else {
//         _items.addAll(res.data ?? const []);
//       }

//       state = AsyncData(List.unmodifiable(_items));
//       return _items;
//     } catch (e, st) {
//       state = AsyncError(e, st);
//       return [];
//     }
//   }

//   Future<void> refresh() async {
//     _page = 1;
//     _totalPages = 1;
//     _items.clear();
//     await _fetch(page: 1, showLoading: true);
//   }

//   Future<bool> loadMore() async {
//     if (_page >= _totalPages) return false;
//     final next = _page + 1;
//     final r = await _fetch(page: next);
//     return r.isNotEmpty;
//   }

//   void setQuery(String q) {
//     _debounce?.cancel();
//     _debounce = Timer(const Duration(milliseconds: 350), () {
//       _query = q.trim();
//       _restart();
//     });
//   }

  // void setStatus(RsvpStatus? s) {
  //   _filter = s;
  //   _restart();
  // }

  // void _restart() {
  //   _page = 1;
  //   _totalPages = 1;
  //   _items.clear();
  //   _fetch(page: 1, showLoading: true);
  // }
// }
