
import 'package:engine_simulator_launcher/l10n/l10n.dart';
import 'package:engine_simulator_launcher/settings/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings_repository/settings_repository.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static MaterialPageRoute<Widget> get route => MaterialPageRoute<Widget>(
        builder: (_) => BlocProvider<SettingsCubit>(
          create: (context) => SettingsCubit(
            settingsRepository: context.read<SettingsRepository>(),
          ),
          child: const SettingsPage(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              l10n.settings,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                EngineSimulatorPathListTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EngineSimulatorPathListTile extends StatelessWidget {
  const EngineSimulatorPathListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<SettingsCubit>();
    final engineSimulatorPath = context
        .select<SettingsCubit, String?>((value) => value.engineSimulatorPath);
    return ListTile /* Engine simulator path */ (
      onTap: bloc.pickEngineSimulatorPath,
      leading: const Icon(Icons.folder),
      title: Text(l10n.engineSimulatorPath),
      subtitle: Text(
        engineSimulatorPath ?? 'Default',
      ),
      trailing: engineSimulatorPath != null
          ? IconButton(
              onPressed: () {
                bloc.engineSimulatorPath = null;
              },
              icon: const Icon(Icons.close),
              tooltip: l10n.useDefaultPath,
            )
          : null,
    );
  }
}
