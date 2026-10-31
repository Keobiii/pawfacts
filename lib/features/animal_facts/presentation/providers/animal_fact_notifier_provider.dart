import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/features/animal_facts/domain/entities/animal_fact.dart';
import 'package:pawfacts/features/animal_facts/domain/entities/animal_type.dart';
import 'package:pawfacts/features/animal_facts/presentation/notifiers/animal_fact_notifier.dart';

final animalFactNotifierProvider =
    AsyncNotifierProvider.family<AnimalFactNotifier, AnimalFact, AnimalType>(
      AnimalFactNotifier.new,
    );
