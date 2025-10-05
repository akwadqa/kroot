// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:wedding_app/features/auth/presentation/pages/login_screen.dart'
    as _i5;
import 'package:wedding_app/features/guests/domain/model/guest_model.dart'
    as _i10;
import 'package:wedding_app/features/guests/presentation/screens/guest_details_page.dart'
    as _i2;
import 'package:wedding_app/features/guests/presentation/screens/guests_screen.dart'
    as _i3;
import 'package:wedding_app/features/home/presentation/screens/home_screen.dart'
    as _i4;
import 'package:wedding_app/features/home/presentation/screens/main_screen.dart'
    as _i6;
import 'package:wedding_app/features/scan_qr_code/presentation/screens/gates_screen.dart'
    as _i1;
import 'package:wedding_app/features/scan_qr_code/presentation/screens/scan_qr_code_screen.dart'
    as _i7;

/// generated route for
/// [_i1.GatesScreen]
class GatesRoute extends _i8.PageRouteInfo<void> {
  const GatesRoute({List<_i8.PageRouteInfo>? children})
    : super(GatesRoute.name, initialChildren: children);

  static const String name = 'GatesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.GatesScreen();
    },
  );
}

/// generated route for
/// [_i2.GuestDetailsPage]
class GuestDetailsRoute extends _i8.PageRouteInfo<GuestDetailsRouteArgs> {
  GuestDetailsRoute({
    _i9.Key? key,
    required _i10.GuestModel guest,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         GuestDetailsRoute.name,
         args: GuestDetailsRouteArgs(key: key, guest: guest),
         initialChildren: children,
       );

  static const String name = 'GuestDetailsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GuestDetailsRouteArgs>();
      return _i2.GuestDetailsPage(key: args.key, guest: args.guest);
    },
  );
}

class GuestDetailsRouteArgs {
  const GuestDetailsRouteArgs({this.key, required this.guest});

  final _i9.Key? key;

  final _i10.GuestModel guest;

  @override
  String toString() {
    return 'GuestDetailsRouteArgs{key: $key, guest: $guest}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! GuestDetailsRouteArgs) return false;
    return key == other.key && guest == other.guest;
  }

  @override
  int get hashCode => key.hashCode ^ guest.hashCode;
}

/// generated route for
/// [_i3.GuestsScreen]
class GuestsRoute extends _i8.PageRouteInfo<void> {
  const GuestsRoute({List<_i8.PageRouteInfo>? children})
    : super(GuestsRoute.name, initialChildren: children);

  static const String name = 'GuestsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.GuestsScreen();
    },
  );
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginScreen();
    },
  );
}

/// generated route for
/// [_i6.MainScreen]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.MainScreen();
    },
  );
}

/// generated route for
/// [_i7.ScanQrCodeScreen]
class ScanQrCodeRoute extends _i8.PageRouteInfo<void> {
  const ScanQrCodeRoute({List<_i8.PageRouteInfo>? children})
    : super(ScanQrCodeRoute.name, initialChildren: children);

  static const String name = 'ScanQrCodeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.ScanQrCodeScreen();
    },
  );
}
