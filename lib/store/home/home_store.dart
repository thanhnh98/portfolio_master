import 'package:mobx/mobx.dart';
import 'package:portfolio_master/data/repositories/weather_repository.dart';
import 'package:portfolio_master/di/get_it.dart';
import 'package:portfolio_master/model/weather.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  WeatherRepository _weatherRepository = getIt<WeatherRepository>();

  @observable
  WeatherModel? _weather = null;

  @computed
  WeatherModel? get weather => _weather;

  @action
  Future requestWeather() async {
    var weatherRes = await _weatherRepository.getWeather();
    if (weatherRes.statusCode == 200){
      _weather = WeatherModel.fromJson(weatherRes.data);
      return;
    }
    return;
  }
}