import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DogFactsPage extends StatelessWidget {
  const DogFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('Dog Facts 🐶'),
      ),
      body: const Center(child: Text('Welcome to Dog Facts!')),
    );
  }
}
