import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/koala_fact.dart';
import '../../domain/usecases/get_random_koala_fact.dart';
import '../providers/koala_providers.dart';

class KoalaFactNotifier extends AsyncNotifier<KoalaFact> {
  late GetRandomKoalaFact _getRandomKoalaFact;

  @override
  Future<KoalaFact> build() {
    _getRandomKoalaFact = ref.read(getRandomKoalaFactProvider);
    return _getRandomKoalaFact();
  }

  Future<void> fetchRandomFact() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() => _getRandomKoalaFact());
  }
}
