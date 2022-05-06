import 'package:dio/dio.dart';
import 'package:portfolio_master/data/network/api_client.dart';
import 'package:portfolio_master/di/get_it.dart';

class WeatherDataSource {
  late ApiClient _apiClient;
  WeatherDataSource(this._apiClient);

  Future<Response> getWeather() => _apiClient.get(
    "v1/current.json?key=98929c5f8ad64f7aad194648220405&q=ho-chi-minh-city&aqi=no"
  );
}