
import 'package:engine_simulator_launcher/constants.dart';
import 'package:engine_simulator_launcher/home/home.dart';
import 'package:engine_simulator_launcher/l10n/l10n.dart';
import 'package:engine_simulator_launcher/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings_repository/settings_repository.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocProvider(
      create: (context) =>
          HomeCubit(settingsRepository: context.read<SettingsRepository>()),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(l10n.engineSimulatorLauncher),
          actions: [
            IconButton(
              onPressed: () => launchUrlString(GITHUB_REPO_URL),
              icon: const Icon(Icons.link),
              tooltip: l10n.githubRepository,
            ),
          ],
        ),
        body: const HomeView(),
        bottomNavigationBar: const HomeBottomBar(),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: const [
          Expanded(child: EngineCard()),
          Expanded(child: ThemeCard()),
        ],
      ),
    );
  }
}

class EngineCard extends StatelessWidget {
  const EngineCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              l10n.actualEngine,
              style: Theme.of(context).textTheme.headline4,
            ),
            const Icon(
              Icons.speed,
              color: Colors.grey,
              size: 128,
            ),
            const Text('Ferrari l386'),
          ],
        ),
      ),
    );
  }
}

class ThemeCard extends StatelessWidget {
  const ThemeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              l10n.actualTheme,
              style: Theme.of(context).textTheme.headline4,
            ),
            const Icon(
              Icons.style,
              color: Colors.grey,
              size: 128,
            ),
            Text(l10n.defaultTheme),
          ],
        ),
      ),
    );
  }
}

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final engineSimulatorPath =
        context.select((HomeCubit bloc) => bloc.state.engineSimulatorPath);
    final bloc = context.read<HomeCubit>();

    void handleNoPath() {
      if (engineSimulatorPath == null) {
        showDialog<AlertDialog>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(l10n.didNotFindLauncherBinary),
            actions: [
              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
                label: const Text('Close'),
              ),
              ElevatedButton.icon(
                onPressed: () async {
                  Navigator.pop(context);
                  await bloc.pickEngineSimulatorPathAndStart();
                },
                icon: const Icon(Icons.create_new_folder),
                label: Text(l10n.setEngineSimulatorFolder),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    SettingsPage.route,
                  );
                },
                icon: const Icon(Icons.settings),
                label: Text(l10n.openSettingsPage),
              ),
            ],
          ),
        );
        return;
      }

      context.read<HomeCubit>().startEngineSimulator();
    }

    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(blurRadius: 2, spreadRadius: 4, color: Colors.black12),
        ],
        color: Theme.of(context).dialogBackgroundColor,
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () => Navigator.push(context, SettingsPage.route),
              icon: const Icon(Icons.settings),
              label: Text(l10n.settings),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: handleNoPath,
              icon: const Icon(Icons.sports_score),
              label: Text(
                context.select(
                  (HomeCubit bloc) => bloc.state.engineSimulatorProcess == null,
                )
                    ? l10n.startSimulator
                    : l10n.stopSimulator,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton.icon(
              onPressed:
                  engineSimulatorPath != null && engineSimulatorPath.isNotEmpty
                      ? () {
                          final url = Uri.parse(engineSimulatorPath);
                          launchUrl(url);
                        }
                      : null,
              icon: const Icon(Icons.folder),
              label: Text(l10n.openFolder),
            ),
          ),
        ],
      ),
    );
  }
}
