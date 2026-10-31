import 'package:pawfacts/core/network/api_client.dart';
import 'package:pawfacts/features/dogs/data/models/dog_fact_model.dart';

class DogRemoteDataSource {
  final ApiClient appClient;

  DogRemoteDataSource(this.appClient);

  Future<DogFactModel> getRandomFact() async {
    final response = await appClient.get('/facts/dog');

    return DogFactModel.fromJson(response);
  }
}
