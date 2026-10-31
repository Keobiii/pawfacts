import 'package:flutter/material.dart';
import 'package:pawfacts/features/animal_facts/domain/entities/animal_type.dart';
import 'package:pawfacts/features/animal_facts/presentation/pages/animal_facts_page.dart';

class PandaFactsPage extends StatelessWidget {
  const PandaFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimalFactsPage(
      animal: AnimalType.panda,
      title: 'Panda Facts',
      description: 'Discover something amazing about panda.',
    );
  }
}
