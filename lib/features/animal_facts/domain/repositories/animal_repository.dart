import 'package:pawfacts/features/animal_facts/domain/entities/animal_fact.dart';

abstract class AnimalRepository {
  Future<AnimalFact> getRandomFact(String animal);
}
