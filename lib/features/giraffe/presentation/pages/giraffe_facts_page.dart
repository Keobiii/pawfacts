import 'package:flutter/material.dart';
import 'package:pawfacts/features/animal_facts/domain/entities/animal_type.dart';
import 'package:pawfacts/features/animal_facts/presentation/pages/animal_facts_page.dart';

class GiraffeFactsPage extends StatelessWidget {
  const GiraffeFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimalFactsPage(
      animal: AnimalType.giraffe,
      title: 'Giraffe Facts',
      description: 'Discover something amazing about giraffe.',
    );
  }
}
