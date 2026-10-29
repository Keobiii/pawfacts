import 'package:dio/dio.dart';

class DogApiClient {
  DogApiClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: 'https://dogapi.dog/api/v2',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {'Accept': 'application/json'},
        ),
      );

  final Dio _dio;

  Future<Map<String, dynamic>> getRandomFact() async {
    final response = await _dio.get('/facts', queryParameters: {'limit': 1});

    return Map<String, dynamic>.from(response.data);
  }
}
