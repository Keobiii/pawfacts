import 'package:pawfacts/features/dogs/data/datasources/dog_api_client.dart';
import 'package:pawfacts/features/dogs/data/models/dog_fact_model.dart';

class DogRemoteDataSource {
  final DogApiClient appClient;

  DogRemoteDataSource(this.appClient);

  Future<DogFactModel> getRandomFact() async {
    final response = await appClient.getRandomFact();
    final data = response['data'] as List<dynamic>;

    if (data.isEmpty) {
      throw Exception('No dog facts found.');
    }

    return DogFactModel.fromJson(Map<String, dynamic>.from(data.first as Map));
  }
}
