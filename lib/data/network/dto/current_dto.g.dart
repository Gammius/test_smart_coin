// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentDto _$CurrentDtoFromJson(Map<String, dynamic> json) =>
    CurrentDto(CurrentData.fromJson(json['current'] as Map<String, dynamic>));

Map<String, dynamic> _$CurrentDtoToJson(CurrentDto instance) =>
    <String, dynamic>{'current': instance.current};

CurrentData _$CurrentDataFromJson(Map<String, dynamic> json) =>
    CurrentData((json['temp_c'] as num).toDouble());

Map<String, dynamic> _$CurrentDataToJson(CurrentData instance) =>
    <String, dynamic>{'temp_c': instance.tempC};
