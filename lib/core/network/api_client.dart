import 'package:dio/dio.dart';

class ApiClient {
  ApiClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: 'https://api.some-random-api.com',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {'Accept': 'application/json'},
        ),
      );

  final Dio _dio;

  Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await _dio.get(endpoint);

    return Map<String, dynamic>.from(response.data);
  }
}
