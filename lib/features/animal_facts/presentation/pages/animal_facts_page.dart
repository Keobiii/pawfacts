import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widget/fact_card.dart';
import '../../domain/entities/animal_type.dart';
import '../providers/animal_fact_notifier_provider.dart';

class AnimalFactsPage extends ConsumerWidget {
  final AnimalType animal;
  final String title;
  final String description;

  const AnimalFactsPage({
    super.key,
    required this.animal,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final factState = ref.watch(animalFactNotifierProvider(animal));

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              Row(
                children: [
                  IconButton(
                    onPressed: () => context.go('/'),
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    style: IconButton.styleFrom(
                      backgroundColor: AppTheme.secondaryBg,
                      foregroundColor: AppTheme.text,
                      side: BorderSide(color: AppTheme.border),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    title.toUpperCase(),
                    style: textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: AppTheme.text,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 48),
                ],
              ),

              const SizedBox(height: 32),

              // Title
              Text(
                'Did you know?',
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: AppTheme.text,
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                description,
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium?.copyWith(
                  color: AppTheme.secondaryText,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 24),

              // Fact content
              Expanded(
                child: Center(
                  child: factState.when(
                    loading: () => Lottie.asset(
                      'assets/animations/loading_animation.json',
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                    error: (error, stackTrace) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.error_outline_rounded,
                          size: 48,
                          color: Colors.redAccent,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Failed to load $title fact.',
                          textAlign: TextAlign.center,
                          style: textTheme.bodyLarge?.copyWith(
                            color: AppTheme.text,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            ref
                                .read(
                                  animalFactNotifierProvider(animal).notifier,
                                )
                                .fetchRandomFact();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.secondaryBg,
                            foregroundColor: AppTheme.text,
                          ),
                          child: const Text('Try Again'),
                        ),
                      ],
                    ),
                    data: (fact) =>
                        SingleChildScrollView(child: FactCard(fact: fact.fact)),
                  ),
                ),
              ),

              // Bottom button
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ref
                        .read(animalFactNotifierProvider(animal).notifier)
                        .fetchRandomFact();
                  },
                  label: const Text('Next Fact'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.secondaryBg,
                    foregroundColor: AppTheme.text,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                      side: BorderSide(color: AppTheme.border, width: 1.5),
                    ),
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
