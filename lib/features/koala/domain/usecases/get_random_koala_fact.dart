import 'package:pawfacts/features/koala/domain/entities/koala_fact.dart';

import '../repositories/koala_repository.dart';

class GetRandomKoalaFact {
  final KoalaRepository repository;

  GetRandomKoalaFact(this.repository);

  Future<KoalaFact> call() {
    return repository.getRandomFact();
  }
}
