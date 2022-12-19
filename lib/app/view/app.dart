import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_bloc/app/view/main_page.dart';
import 'package:study_bloc/counter/counter.dart';
import 'package:study_bloc/l10n/l10n.dart';
import 'package:study_bloc/random-name/view/random_name_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainPage(),
      routes: [
        GoRoute(
          path: 'counter',
          builder: (context, state) => const CounterPage(),
        ),
        GoRoute(
          path: 'random-name',
          builder: (context, state) => const RandomNamePage(),
        ),
      ],
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
