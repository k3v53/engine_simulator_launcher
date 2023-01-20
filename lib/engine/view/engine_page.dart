import 'dart:io';

import 'package:engine_simulator_data/engine_simulator_data.dart';
import 'package:engine_simulator_launcher/engine/bloc/engine_bloc.dart';
import 'package:engine_simulator_launcher/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnginePage extends StatefulWidget {
  const EnginePage({super.key});
  static const heroTag = 'enginePageHero';
  // TODO: Find a way to do this in a better way, this is giving me nightmares
  static MaterialPageRoute<Widget> route(String engineSimulatorPath) =>
      MaterialPageRoute<Widget>(
        builder: (context) => Hero(
          tag: heroTag,
          child: BlocProvider(
            create: (context) => EngineBloc(
              engineSimulatorData: EngineSimulatorData(
                path: engineSimulatorPath,
              ),
            ),
            child: const EnginePage(),
          ),
        ),
      );

  @override
  State<EnginePage> createState() => _EnginePageState();
}

class _EnginePageState extends State<EnginePage> {
  var _showAsList = true;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              l10n.selectNewEngine,
              style: const TextStyle(color: Colors.white),
            ),
            actions: [
              if (_showAsList)
                IconButton(
                  onPressed: () => setState(() => _showAsList = !_showAsList),
                  icon: const Icon(Icons.grid_on),
                  tooltip: l10n.showAsAGrid,
                )
              else
                IconButton(
                  onPressed: () => setState(() => _showAsList = !_showAsList),
                  icon: const Icon(Icons.list),
                  tooltip: l10n.showAsAList,
                ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.sort),
                tooltip: l10n.sort,
              )
            ],
          ),
          BlocBuilder<EngineBloc, EngineState>(
            builder: (context, state) {
              final engines = state.engines;
              if (_showAsList) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: engines.length,
                    (context, index) {
                      final engine = engines[index];
                      return ListTile(
                        onTap: () {
                          context
                              .read<EngineBloc>()
                              .add(EngineEvent.setEngine(engine));
                          Navigator.pop(context);
                        },
                        title: CarName(engine: engine),
                        subtitle: Text(engine.filePath),
                      );
                    },
                  ),
                );
              } else {
                return SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 350,
                    mainAxisExtent: 200,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    childCount: engines.length,
                    (context, index) => SelectEngineCard(
                      engine: Engine(File('')), // TODO: Implement
                    ),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}

class CarName extends StatelessWidget {
  CarName({
    super.key,
    required this.engine,
  });
  Engine engine;

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: engine.name,
        builder: (BuildContext context, AsyncSnapshot<String?> snapshot) =>
            Text(snapshot.data ?? 'Null'),
      );
}

class SelectEngineCard extends StatelessWidget {
  SelectEngineCard({
    super.key,
    required this.engine,
  });
  Engine engine;

  @override
  Widget build(BuildContext context) => Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [CarName(engine: engine), const Text('file_name_here')],
        ),
      );
}
