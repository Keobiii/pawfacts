import 'package:pawfacts/features/animal_facts/data/datasources/animal_fact_remote_data_source.dart';
import 'package:pawfacts/features/animal_facts/domain/entities/animal_fact.dart';
import 'package:pawfacts/features/animal_facts/domain/repositories/animal_repository.dart';

class AnimalFactRepositoryImpl implements AnimalRepository {
  final AnimalFactRemoteDataSource remoteDataSource;

  AnimalFactRepositoryImpl(this.remoteDataSource);

  @override
  Future<AnimalFact> getRandomFact(String animal) async {
    final model = await remoteDataSource.getRandomFact(animal);

    return model.toEntity();
  }
}
