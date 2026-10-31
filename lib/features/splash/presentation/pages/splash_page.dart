import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(const Duration(seconds: 5), () {
      if (mounted) {
        context.go('/');
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/splash_animation.json',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              Text(
                'PawFacts',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.text,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Discover amazing animal facts!',
                style: Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(color: AppTheme.secondaryText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
