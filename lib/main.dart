import 'package:flutter/material.dart';
import 'package:pawfacts/core/router/app_router.dart';

void main() {
  runApp(const PawFactsApp());
}

class PawFactsApp extends StatelessWidget {
  const PawFactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'PawFacts',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
