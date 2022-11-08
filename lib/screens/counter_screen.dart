import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_management/providers/providers.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {
              count.resetCounter();
            },
            icon: const Icon(CupertinoIcons.refresh_thick),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "${count.counter}",
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.redAccent,
              child: const Icon(Icons.remove),
              onPressed: () {
                count.decrementCounter();
              },
            ),

            FloatingActionButton(
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
              onPressed: () {
                count.incrementCounter();
              },
            ),
          ],
        ),
      ),
    );
  }
}
