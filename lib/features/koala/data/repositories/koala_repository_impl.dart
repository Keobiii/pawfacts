import 'package:pawfacts/features/koala/domain/repositories/koala_repository.dart';

import '../../domain/entities/koala_fact.dart';
import '../datasources/koala_remote_data_source.dart';

class KoalaRepositoryImpl implements KoalaRepository {
  final KoalaRemoteDataSource remoteDataSource;

  KoalaRepositoryImpl(this.remoteDataSource);

  @override
  Future<KoalaFact> getRandomFact() async {
    final model = await remoteDataSource.getRandomFact();

    return model.toEntity();
  }
}
