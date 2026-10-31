import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_client_provider.dart';
import '../../data/datasources/koala_remote_data_source.dart';
import '../../data/repositories/koala_repository_impl.dart';
import '../../domain/repositories/koala_repository.dart';
import '../../domain/usecases/get_random_koala_fact.dart';

final koalaRemoteDataSourceProvider = Provider<KoalaRemoteDataSource>((ref) {
  return KoalaRemoteDataSource(ref.read(apiClientProvider));
});

final koalaRepositoryProvider = Provider<KoalaRepository>((ref) {
  return KoalaRepositoryImpl(ref.read(koalaRemoteDataSourceProvider));
});

final getRandomKoalaFactProvider = Provider<GetRandomKoalaFact>((ref) {
  return GetRandomKoalaFact(ref.read(koalaRepositoryProvider));
});
