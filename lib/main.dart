import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/core/router/app_router.dart';

void main() {
  runApp(ProviderScope(child: const PawFactsApp()));
}

class PawFactsApp extends StatelessWidget {
  const PawFactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'PawFacts',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
