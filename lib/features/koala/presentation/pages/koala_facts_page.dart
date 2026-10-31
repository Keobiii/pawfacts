import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pawfacts/features/koala/presentation/providers/koala_fact_provider.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widget/fact_card.dart';

class KoalaFactsPage extends ConsumerWidget {
  const KoalaFactsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final koalaFactState = ref.watch(koalaFactProvider);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
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
                    'KOALA FACTS',
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
                'Discover something amazing about koala.',
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium?.copyWith(
                  color: AppTheme.secondaryText,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 24),

              // Fact content
              Center(
                child: koalaFactState.when(
                  loading: () =>
                      CircularProgressIndicator(color: AppTheme.text),
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
                        'Failed to load koala fact.',
                        textAlign: TextAlign.center,
                        style: textTheme.bodyLarge?.copyWith(
                          color: AppTheme.text,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          ref
                              .read(koalaFactProvider.notifier)
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

              Spacer(),
              // Bottom buttons
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ref.read(koalaFactProvider.notifier).fetchRandomFact();
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
