import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/forecast_model.dart';
import 'weather_mapper.dart';

part 'forecast_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherResponseDto {
  final ForecastDto forecast;

  WeatherResponseDto({required this.forecast});

  factory WeatherResponseDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseDtoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForecastDto implements DomainMappable<List<ForecastModel>> {
  @JsonKey(name: 'forecastday')
  final List<DayForecastDto> days;

  ForecastDto({required this.days});

  @override
  List<ForecastModel> toDomain() => days.map((e) => e.toDomain()).toList();

  factory ForecastDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDtoToJson(this);
}

@JsonSerializable()
class DayForecastDto implements DomainMappable<ForecastModel> {
  final String date;
  final DayDto day;

  DayForecastDto({required this.date, required this.day});

  @override
  ForecastModel toDomain() => ForecastModel(date: date, avgTempC: day.avgTempC);

  factory DayForecastDto.fromJson(Map<String, dynamic> json) =>
      _$DayForecastDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DayForecastDtoToJson(this);
}

@JsonSerializable()
class DayDto {
  @JsonKey(name: 'avgtemp_c')
  final double avgTempC;

  DayDto({required this.avgTempC});

  factory DayDto.fromJson(Map<String, dynamic> json) => _$DayDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DayDtoToJson(this);
}
