import 'package:test_smart_coin/data/repository/weather_repository.dart';
import 'package:test_smart_coin/domain/model/weather_model.dart';
import 'package:test_smart_coin/domain/model/forecast_model.dart';

class WeatherInteractor {
  final WeatherRepository repository;

  WeatherInteractor(this.repository);

  Future<CurrentModel> getCurrentWeather() {
    return repository.getCurrentWeather();
  }

  Future<List<ForecastModel>> getForecastWeather() {
    return repository.getForecastWeather();
  }
}
