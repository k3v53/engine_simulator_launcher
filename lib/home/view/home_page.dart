import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Engine Simulator Launcher'),
      ),
      body: const HomeView(),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          const Expanded(child: EngineCard()),
          const Expanded(child: ThemeCard()),
        ],
      ),
    );
  }
}

class EngineCard extends StatelessWidget {
  const EngineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Actual Engine',
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
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Actual Theme',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Icon(
              Icons.style,
              color: Colors.grey,
              size: 128,
            ),
            const Text('Default Theme'),
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
    return Container(
      color: Colors.grey.shade300,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              label: const Text('Settings'),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.sports_score),
              label: const Text('Start simulator'),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.folder),
              label: const Text('Open folder'),
            ),
          ),
        ],
      ),
    );
  }
}
