import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/features/cats/data/datasources/cat_api_client.dart';
import 'package:pawfacts/features/cats/data/datasources/cat_remote_data_source.dart';
import 'package:pawfacts/features/cats/data/repositories/cat_repository_impl.dart';
import 'package:pawfacts/features/cats/domain/repositories/cat_repository.dart';
import 'package:pawfacts/features/cats/domain/usecases/get_random_cat_fact.dart';

// API Client
final catApiClientProvider = Provider<CatApiClient>((ref) {
  return CatApiClient();
});

// Remote Data Source
final catRemoteDataSourceProvider = Provider<CatRemoteDataSource>((ref) {
  return CatRemoteDataSource(ref.read(catApiClientProvider));
});

// Repository
final catRepositoryProvider = Provider<CatRepository>((ref) {
  return CatRepositoryImpl(ref.watch(catRemoteDataSourceProvider));
});

// Use Case
final getRandomCatFactProvider = Provider<GetRandomCatFact>((ref) {
  return GetRandomCatFact(ref.watch(catRepositoryProvider));
});
