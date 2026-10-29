import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CatFactsPage extends StatelessWidget {
  const CatFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('Cat Facts 🐱'),
      ),
      body: const Center(child: Text('Welcome to Cat Facts!')),
    );
  }
}
