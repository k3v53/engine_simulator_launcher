import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            centerTitle: true,
            title: Text('Engine Simulator Launcher'),
            // expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              // background: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   children: [
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text('A cool button'),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text('A cool button'),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text('A cool button'),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text('A cool button'),
              //     ),
              //   ],
              // ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: SliverGrid.extent(
              maxCrossAxisExtent: 400,
              childAspectRatio: .5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                Card(
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
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade300,
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox(height: 10),
            ),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.sports_score),
                label: const Text('Start simulator'),
              ),
            ),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.folder),
                label: const Text('Open folder'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}