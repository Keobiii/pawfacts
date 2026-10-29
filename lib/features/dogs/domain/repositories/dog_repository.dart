import 'package:pawfacts/features/dogs/domain/entities/dog_fact.dart';

abstract class DogRepository {
  Future<DogFact> getRandomFact();
}