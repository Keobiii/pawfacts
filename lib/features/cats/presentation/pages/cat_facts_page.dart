import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    'CAT FACTS',
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.text,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 48),
                ],
              ),

              const SizedBox(height: 32),

              // Fact card
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Page title
                      Text(
                        'Did you know?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 22,
                          height: 1.2,
                          fontWeight: FontWeight.w900,
                          color: AppTheme.text,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        'Discover something amazing about cats.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: AppTheme.text,
                        ),
                      ),

                      const SizedBox(height: 24),

                      const FactCard(
                        fact:
                            'Cats can rotate their ears up to 180 degrees '
                            'to locate sounds around them.',
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Navigation buttons
              SizedBox(
                height: 50,
                child: Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // TODO: Load the next cat fact
                    },
                    label: Text(
                      'Next Fact',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.text,
                      ),
                    ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
