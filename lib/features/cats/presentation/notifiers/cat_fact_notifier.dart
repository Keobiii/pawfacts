import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/features/cats/domain/entities/cat_fact.dart';
import 'package:pawfacts/features/cats/domain/usecases/get_random_cat_fact.dart';

import '../providers/cat_providers.dart';

class CatFactNotifier extends AsyncNotifier<CatFact> {
  late GetRandomCatFact _getRandomCatFact;

  @override
  FutureOr<CatFact> build() {
    _getRandomCatFact = ref.read(getRandomCatFactProvider);
    return _getRandomCatFact();
  }

  Future<void> fetchRandomFact() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() => _getRandomCatFact());
  }
}
