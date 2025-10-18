// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottm_navigation_bar_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(BottomNavIndex)
const bottomNavIndexProvider = BottomNavIndexProvider._();

final class BottomNavIndexProvider
    extends $NotifierProvider<BottomNavIndex, int> {
  const BottomNavIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bottomNavIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bottomNavIndexHash();

  @$internal
  @override
  BottomNavIndex create() => BottomNavIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$bottomNavIndexHash() => r'59407c849966979151fadc67336236fc7508297f';

abstract class _$BottomNavIndex extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
