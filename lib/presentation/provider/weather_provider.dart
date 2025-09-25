import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:test_smart_coin/domain/model/weather_model.dart';
import 'package:test_smart_coin/domain/model/forecast_model.dart';
import 'package:test_smart_coin/domain/weather_interactor.dart';

class WeatherProvider extends ChangeNotifier{
  final WeatherInteractor weatherInteractor;
  CurrentModel? currentWeather;
  List<ForecastModel>? forecastWeather;
  Timer? _timer;

  WeatherProvider(this.weatherInteractor) {
    _timer = Timer.periodic(const Duration(seconds: 30), (_) {
      loadCurrentWeather();
    });
  }

  Future<void> loadCurrentWeather () async {
    currentWeather = await weatherInteractor.getCurrentWeather();
    notifyListeners();
  }

  Future<void> loadForecastWeather() async {
    forecastWeather = await weatherInteractor.getForecastWeather();
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}