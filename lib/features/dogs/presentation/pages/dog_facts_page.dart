import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/dog_fact_provider.dart';

class DogFactsPage extends ConsumerWidget {
  const DogFactsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dogFactState = ref.watch(dogFactNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('Dog Facts 🐶'),
      ),
      body: Center(
        child: dogFactState.when(
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Column(
            children: [
              const Text('Failed to load dog fact.'),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  ref.read(dogFactNotifierProvider.notifier).fetchRandonFacts();
                },
                child: const Text('Try Again'),
              ),
            ],
          ),
          data: (fact) => Padding(
            padding: const EdgeInsetsGeometry.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.pets, size: 64),
                const SizedBox(height: 20),
                Text(
                  fact.fact,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18, height: 1.5),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () {
                    ref
                        .read(dogFactNotifierProvider.notifier)
                        .fetchRandonFacts();
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Get Another Fact'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
