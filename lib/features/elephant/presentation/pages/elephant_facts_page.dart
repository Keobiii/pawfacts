import 'package:flutter/material.dart';
import 'package:pawfacts/features/animal_facts/domain/entities/animal_type.dart';
import 'package:pawfacts/features/animal_facts/presentation/pages/animal_facts_page.dart';

class ElephantFactsPage extends StatelessWidget {
  const ElephantFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimalFactsPage(
      animal: AnimalType.elephant,
      title: 'Elephant Facts',
      description: 'Discover something amazing about elephant.',
    );
  }
}
