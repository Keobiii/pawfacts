import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PawFacts 🐾'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discover the animal world!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text('Choose an animal to explore interesting facts.'),
            const SizedBox(height: 24),

            _AnimalCard(
              title: 'Dogs',
              subtitle: 'Discover amazing dog facts',
              icon: Icons.pets,
              onTap: () => context.go('/dogs'),
            ),

            const SizedBox(height: 16),

            _AnimalCard(
              title: 'Cats',
              subtitle: 'Discover amazing cat facts',
              icon: Icons.cruelty_free,
              onTap: () => context.go('/cats'),
            ),
          ],
        ),
      ),
    );
  }
}

class _AnimalCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _AnimalCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(icon, size: 40),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
