import 'package:pawfacts/features/dogs/domain/entities/dog_fact.dart';
import 'package:pawfacts/features/dogs/domain/repositories/dog_repository.dart';

class GetRandomDogFact {
  final DogRepository repository;

  GetRandomDogFact(this.repository);

  Future<DogFact> call() {
    return repository.getRandomFact();
  }
}