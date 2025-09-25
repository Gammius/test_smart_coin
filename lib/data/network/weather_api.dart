import 'package:test_smart_coin/data/constants.dart';
import 'package:test_smart_coin/data/network/base_api.dart';
import 'package:test_smart_coin/data/network/dto/current_dto.dart';
import 'package:test_smart_coin/data/network/dto/forecast_dto.dart';

class WeatherApi {
  final BaseApi baseApi;

  WeatherApi(this.baseApi);

  Future<CurrentDto> getWeatherNow() async {
    final response = await baseApi.get(
      "/current.json",
      query: {
        "q": Constants.city,
        "key": Constants.key
      },
    );
    return CurrentDto.fromJson(response.data);
  }

  Future<WeatherResponseDto> getWeatherWeek() async {
    final response = await baseApi.get(
      "/forecast.json",
      query: {
        "q": Constants.city,
        "key": Constants.key,
        "days": Constants.days,
      },
    );
    return WeatherResponseDto.fromJson(response.data);
  }
}
