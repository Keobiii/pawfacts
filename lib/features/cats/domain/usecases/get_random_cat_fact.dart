import 'package:pawfacts/features/cats/domain/entities/cat_fact.dart';
import 'package:pawfacts/features/cats/domain/repositories/cat_repository.dart';

class GetRandomCatFact {
  final CatRepository repository;

  GetRandomCatFact(this.repository);

  Future<CatFact> call() {
    return repository.getRandomFact();
  }
}
