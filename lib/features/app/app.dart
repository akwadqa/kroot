import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../src/localization/current_language.dart';
import '../../src/routing/app_router_provider.dart';
import '../../src/theme/app_theme.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {

  @override
  void initState() {
    Future(() => ref
        .read(currentLanguageProvider.notifier)
        .changeLanguage(context, ref.watch(currentLanguageProvider)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appRouter = ref.watch(appRouterProvider);
    final currentLanguage = ref.watch(currentLanguageProvider);
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(
          deepLinkBuilder: (deepLink) => DeepLink.defaultPath),
      routeInformationParser: appRouter.defaultRouteParser(),
      theme: ref.watch(appThemeProvider),
      onGenerateTitle: (context) => context.tr('appTitle'),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: Locale(currentLanguage),
    );
  }
}

