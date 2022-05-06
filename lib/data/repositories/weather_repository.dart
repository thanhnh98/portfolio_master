import 'package:dio/dio.dart';
import 'package:portfolio_master/data/data_source/weather_datasource.dart';

class WeatherRepository {
  WeatherDataSource _dataSource;
  WeatherRepository(this._dataSource);

  Future<Response> getWeather() => _dataSource.getWeather();
}