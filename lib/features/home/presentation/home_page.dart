import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pawfacts/core/theme/app_theme.dart';

import 'widget/animal_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'What animal you want to know about?',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.text,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'List of Animals',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.text,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Column(
                  children: [
                    AnimalCard(
                      title: 'Dogs',
                      icon: 'assets/icons/dog_icon.png',
                      onTap: () => context.go('/dogs'),
                    ),
                    const SizedBox(height: 16),
                    AnimalCard(
                      title: 'Cats',
                      icon: 'assets/icons/cat_icon.png',
                      onTap: () => context.go('/cats'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
