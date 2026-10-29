import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/features/dogs/domain/entities/dog_fact.dart';
import 'package:pawfacts/features/dogs/domain/usecases/get_random_dog_fact.dart';

import '../providers/dog_providers.dart';

class DogFactNotifier extends AsyncNotifier<DogFact> {
  late GetRandomDogFact _getRandomDogFact;

  @override
  Future<DogFact> build() {
    _getRandomDogFact = ref.read(getRandomDogFactProvider);
    return _getRandomDogFact();
  }

  Future<void> fetchRandonFacts() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() => _getRandomDogFact());
  }
}
