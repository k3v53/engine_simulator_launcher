import 'package:engine_simulator_launcher/counter/counter.dart';
import 'package:engine_simulator_launcher/home/view/home_page.dart';
import 'package:engine_simulator_launcher/l10n/l10n.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.grey),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.grey,
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
