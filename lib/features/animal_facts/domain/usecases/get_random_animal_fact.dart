import 'package:pawfacts/features/animal_facts/domain/entities/animal_fact.dart';
import 'package:pawfacts/features/animal_facts/domain/repositories/animal_repository.dart';

class GetRandomAnimalFact {
  final AnimalRepository repository;

  GetRandomAnimalFact(this.repository);

  Future<AnimalFact> call(String animal) {
    return repository.getRandomFact(animal);
  }
}
