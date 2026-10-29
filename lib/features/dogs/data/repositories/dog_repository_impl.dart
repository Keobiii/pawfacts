import 'package:pawfacts/features/dogs/data/datasources/dog_remote_data_source.dart';
import 'package:pawfacts/features/dogs/domain/entities/dog_fact.dart';
import 'package:pawfacts/features/dogs/domain/repositories/dog_repository.dart';

class DogRepositoryImpl implements DogRepository {
  final DogRemoteDataSource remoteDataSource;

  DogRepositoryImpl(this.remoteDataSource);

  @override
  Future<DogFact> getRandomFact() async {
    final model = await remoteDataSource.getRandomFact();

    return model.toEntity();
  }

  
}