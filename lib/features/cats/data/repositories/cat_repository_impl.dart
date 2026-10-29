import 'package:pawfacts/features/cats/data/datasources/cat_remote_data_source.dart';
import 'package:pawfacts/features/cats/domain/entities/cat_fact.dart';
import 'package:pawfacts/features/cats/domain/repositories/cat_repository.dart';

class CatRepositoryImpl implements CatRepository {
  final CatRemoteDataSource remoteDataSource;

  CatRepositoryImpl(this.remoteDataSource);

  @override
  Future<CatFact> getRandomFact() async {
    final model = await remoteDataSource.getRandomFact();

    return model.toEntity();
  }
}
