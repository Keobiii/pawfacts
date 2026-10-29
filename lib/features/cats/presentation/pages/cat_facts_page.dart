import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widget/fact_card.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CatFactsPage extends StatelessWidget {
  const CatFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Did you know?',
                  style: textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.text,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 32),

              const Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: FactCard(
                      fact:
                          'Cats can rotate their ears up to 180 degrees '
                          'to locate sounds around them.',
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () => context.go('/'),
                      label: const Text('Back'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppTheme.text,
                        side: BorderSide(color: AppTheme.border, width: 1),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // TODO: Load the next cat fact
                      },
                      label: const Text('Next Fact'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.secondaryBg,
                        foregroundColor: AppTheme.text,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: AppTheme.border, width: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
