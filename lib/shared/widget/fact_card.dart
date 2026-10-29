import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class FactCard extends StatelessWidget {
  final String fact;

  const FactCard({super.key, required this.fact});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppTheme.secondaryBg,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppTheme.border, width: 2),

        boxShadow: [
          BoxShadow(color: AppTheme.border, offset: const Offset(0, 3)),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            fact,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              height: 1.7,
              fontWeight: FontWeight.w500,
              color: AppTheme.text,
            ),
          ),
        ],
      ),
    );
  }
}
