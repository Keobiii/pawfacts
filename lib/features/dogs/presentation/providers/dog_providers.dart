import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/core/network/api_client_provider.dart';
import 'package:pawfacts/features/dogs/data/datasources/dog_remote_data_source.dart';
import 'package:pawfacts/features/dogs/data/repositories/dog_repository_impl.dart';
import 'package:pawfacts/features/dogs/domain/repositories/dog_repository.dart';
import 'package:pawfacts/features/dogs/domain/usecases/get_random_dog_fact.dart';

// Remote Data Source
final dogRemoteDataSourceProvider = Provider<DogRemoteDataSource>((ref) {
  return DogRemoteDataSource(ref.read(apiClientProvider));
});

// Repository
final dogRepositoryProvider = Provider<DogRepository>((ref) {
  return DogRepositoryImpl(ref.read(dogRemoteDataSourceProvider));
});

// Use Case
final getRandomDogFactProvider = Provider<GetRandomDogFact>((ref) {
  return GetRandomDogFact(ref.read(dogRepositoryProvider));
});
