import 'package:pawfacts/core/network/api_client.dart';
import 'package:pawfacts/features/cats/data/models/cat_fact_model.dart';

class CatRemoteDataSource {
  final ApiClient appClient;

  CatRemoteDataSource(this.appClient);

  Future<CatFactModel> getRandomFact() async {
    final response = await appClient.get('/facts/cat');

    return CatFactModel.fromJson(response);
  }
}
