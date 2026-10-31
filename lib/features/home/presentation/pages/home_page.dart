import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pawfacts/core/theme/app_theme.dart';

import '../widget/animal_card.dart';

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
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
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
                      const SizedBox(height: 16),
                      AnimalCard(
                        title: 'Koala',
                        icon: 'assets/icons/koala_icon.png',
                        onTap: () => context.go('/koalas'),
                      ),
                      const SizedBox(height: 16),
                      AnimalCard(
                        title: 'Elephant',
                        icon: 'assets/icons/elephant_icon.png',
                        onTap: () => context.go('/elephants'),
                      ),
                      const SizedBox(height: 16),
                      AnimalCard(
                        title: 'Panda',
                        icon: 'assets/icons/panda_icon.png',
                        onTap: () => context.go('/pandas'),
                      ),
                      const SizedBox(height: 16),
                      AnimalCard(
                        title: 'Giraffe',
                        icon: 'assets/icons/giraffe_icon.png',
                        onTap: () => context.go('/giraffes'),
                      ),
                      const SizedBox(height: 16),
                      AnimalCard(
                        title: 'Whale',
                        icon: 'assets/icons/whale_icon.png',
                        onTap: () => context.go('/whales'),
                      ),
                      const SizedBox(height: 16),
                      AnimalCard(
                        title: 'Fox',
                        icon: 'assets/icons/fox_icon.png',
                        onTap: () => context.go('/foxes'),
                      ),
                      const SizedBox(height: 16),
                      AnimalCard(
                        title: 'Raccoon',
                        icon: 'assets/icons/raccoon_icon.png',
                        onTap: () => context.go('/raccoons'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
