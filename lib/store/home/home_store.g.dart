// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  late final _$weatherAtom = Atom(name: '_HomeStore.weather', context: context);

  @override
  WeatherModel? get weather {
    _$weatherAtom.reportRead();
    return super.weather;
  }

  @override
  set weather(WeatherModel? value) {
    _$weatherAtom.reportWrite(value, super.weather, () {
      this.weather = value;
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
