import 'package:pawfacts/core/network/api_client.dart';
import 'package:pawfacts/features/animal_facts/data/models/animal_fact_model.dart';

class AnimalFactRemoteDataSource {
  final ApiClient apiClient;

  AnimalFactRemoteDataSource(this.apiClient);

  Future<AnimalFactModel> getRandomFact(String animal) async {
    final response = await apiClient.get('/facts/$animal');

    return AnimalFactModel.fromJson(response);
  }
}
