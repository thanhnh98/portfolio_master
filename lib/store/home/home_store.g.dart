// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  Computed<WeatherModel?>? _$weatherComputed;

  @override
  WeatherModel? get weather =>
      (_$weatherComputed ??= Computed<WeatherModel?>(() => super.weather,
              name: '_HomeStore.weather'))
          .value;

  late final _$_weatherAtom =
      Atom(name: '_HomeStore._weather', context: context);

  @override
  WeatherModel? get _weather {
    _$_weatherAtom.reportRead();
    return super._weather;
  }

  @override
  set _weather(WeatherModel? value) {
    _$_weatherAtom.reportWrite(value, super._weather, () {
      super._weather = value;
    });
  }

  late final _$requestWeatherAsyncAction =
      AsyncAction('_HomeStore.requestWeather', context: context);

  @override
  Future<dynamic> requestWeather() {
    return _$requestWeatherAsyncAction.run(() => super.requestWeather());
  }

  @override
  String toString() {
    return '''
weather: ${weather}
    ''';
  }
}
