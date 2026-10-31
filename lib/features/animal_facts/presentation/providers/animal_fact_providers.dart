import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pawfacts/core/network/api_client_provider.dart';
import 'package:pawfacts/features/animal_facts/data/datasources/animal_fact_remote_data_source.dart';
import 'package:pawfacts/features/animal_facts/data/repositories/animal_fact_repository_impl.dart';
import 'package:pawfacts/features/animal_facts/domain/usecases/get_random_animal_fact.dart';

// Data Source
final animalFactRemoteDataSourceProvider = Provider<AnimalFactRemoteDataSource>(
  (ref) {
    return AnimalFactRemoteDataSource(ref.read(apiClientProvider));
  },
);

// Repository
final animalFactRepositoryProvider = Provider<AnimalFactRepositoryImpl>((ref) {
  return AnimalFactRepositoryImpl(ref.read(animalFactRemoteDataSourceProvider));
});

final getRandomAnimalFactProvider = Provider<GetRandomAnimalFact>((ref) {
  return GetRandomAnimalFact(ref.read(animalFactRepositoryProvider));
});
