import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/animal_fact.dart';
import '../../domain/entities/animal_type.dart';
import '../../domain/usecases/get_random_animal_fact.dart';
import '../providers/animal_fact_providers.dart';

class AnimalFactNotifier extends AsyncNotifier<AnimalFact> {
  AnimalFactNotifier(this.animal);

  final AnimalType animal;

  late GetRandomAnimalFact _getRandomAnimalFact;

  @override
  Future<AnimalFact> build() {
    _getRandomAnimalFact = ref.read(getRandomAnimalFactProvider);

    return _getRandomAnimalFact(animal.endpoint);
  }

  Future<void> fetchRandomFact() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() => _getRandomAnimalFact(animal.endpoint));
  }
}
