// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponseDto _$WeatherResponseDtoFromJson(Map<String, dynamic> json) =>
    WeatherResponseDto(
      forecast: ForecastDto.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherResponseDtoToJson(WeatherResponseDto instance) =>
    <String, dynamic>{'forecast': instance.forecast.toJson()};

ForecastDto _$ForecastDtoFromJson(Map<String, dynamic> json) => ForecastDto(
  days: (json['forecastday'] as List<dynamic>)
      .map((e) => DayForecastDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ForecastDtoToJson(ForecastDto instance) =>
    <String, dynamic>{
      'forecastday': instance.days.map((e) => e.toJson()).toList(),
    };

DayForecastDto _$DayForecastDtoFromJson(Map<String, dynamic> json) =>
    DayForecastDto(
      date: json['date'] as String,
      day: DayDto.fromJson(json['day'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayForecastDtoToJson(DayForecastDto instance) =>
    <String, dynamic>{'date': instance.date, 'day': instance.day};

DayDto _$DayDtoFromJson(Map<String, dynamic> json) =>
    DayDto(avgTempC: (json['avgtemp_c'] as num).toDouble());

Map<String, dynamic> _$DayDtoToJson(DayDto instance) => <String, dynamic>{
  'avgtemp_c': instance.avgTempC,
};
