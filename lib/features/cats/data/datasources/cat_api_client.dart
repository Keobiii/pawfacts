import 'package:dio/dio.dart';

class CatApiClient {
  CatApiClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: 'https://catfact.ninja',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {'Accept': 'application/json'},
        ),
      );

  final Dio _dio;

  Future<Map<String, dynamic>> getRandomFact() async {
    final response = await _dio.get('/fact');

    return Map<String, dynamic>.from(response.data);
  }
}
