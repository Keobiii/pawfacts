import 'package:pawfacts/core/network/api_client.dart';

import '../models/koala_fact_model.dart';

class KoalaRemoteDataSource {
  final ApiClient appClient;

  KoalaRemoteDataSource(this.appClient);

  Future<KoalaFactModel> getRandomFact() async {
    final response = await appClient.get('/facts/koala');

    return KoalaFactModel.fromJson(response);
  }
}
