import 'package:test_smart_coin/data/network/weather_api.dart';
import 'package:test_smart_coin/domain/model/weather_model.dart';
import 'package:test_smart_coin/domain/model/forecast_model.dart';

class WeatherRepository {
  final WeatherApi weatherApi;

  WeatherRepository(this.weatherApi);

  Future<CurrentModel> getCurrentWeather() async {
    final result = await weatherApi.getWeatherNow();
    return result.toDomain();
  }

  Future<List<ForecastModel>> getForecastWeather() async {
    final result = await weatherApi.getWeatherWeek();
    return result.forecast.toDomain();
  }
}
