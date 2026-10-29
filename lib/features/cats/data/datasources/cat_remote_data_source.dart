import 'package:pawfacts/features/cats/data/models/cat_fact_model.dart';
import 'package:pawfacts/features/cats/data/datasources/cat_api_client.dart';

class CatRemoteDataSource {
  final CatApiClient appClient;

  CatRemoteDataSource(this.appClient);

  Future<CatFactModel> getRandomFact() async {
    final response = await appClient.getRandomFact();

    return CatFactModel.fromJson(response);
  }
}
