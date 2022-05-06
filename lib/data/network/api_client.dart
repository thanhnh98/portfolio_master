import 'package:dio/dio.dart';

import '../../di/get_it.dart';

class ApiClient {
  Dio _dio;

  ApiClient(this._dio);

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters = null}) async {
    return await _dio.get(
      path,
      queryParameters: queryParameters
    );
  }
}