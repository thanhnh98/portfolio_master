import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio_master/data/data_source/weather_datasource.dart';
import 'package:portfolio_master/data/network/api_client.dart';
import 'package:portfolio_master/data/repositories/weather_repository.dart';
import 'package:portfolio_master/store/home/home_store.dart';

final getIt = GetIt.instance;

void setup(){
  registerApiClient();
  registerDataSources();
  registerRepositories();
  registerStore();
}

void registerDataSources() {
  getIt.registerSingleton<WeatherDataSource>(WeatherDataSource(getIt<ApiClient>()));
}

void registerRepositories() {
  getIt.registerSingleton<WeatherRepository>(
      WeatherRepository(
          getIt<WeatherDataSource>()
      )
  );
}

void registerStore(){
  getIt.registerSingleton<HomeStore>(
      HomeStore()
  );
}

void registerApiClient(){
  getIt.registerSingleton<Dio>(
    _provideDio()
  );
  getIt.registerSingleton<ApiClient>(ApiClient(getIt<Dio>()));
}

Dio _provideDio() {
  return Dio()
      ..options.baseUrl = "http://api.weatherapi.com/"
      ..options.connectTimeout = 5000
      ..options.receiveTimeout = 3000
      ..options.responseType = ResponseType.json
  ;
}