import 'package:engine_simulator_launcher/home/view/home_page.dart';
import 'package:engine_simulator_launcher/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings_repository/src/settings_repository.dart';

class App extends StatelessWidget {
  const App({super.key, required this.settingsRepository});
  final SettingsRepository settingsRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: settingsRepository,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    super.key,
  });

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
