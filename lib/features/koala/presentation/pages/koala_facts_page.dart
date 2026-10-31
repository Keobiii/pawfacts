import 'package:flutter/material.dart';
import 'package:pawfacts/features/animal_facts/domain/entities/animal_type.dart';
import 'package:pawfacts/features/animal_facts/presentation/pages/animal_facts_page.dart';

class KoalaFactsPage extends StatelessWidget {
  const KoalaFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimalFactsPage(
      animal: AnimalType.koala,
      title: 'Koala Facts',
      description: 'Discover something amazing about koala.',
    );
  }
}
