import 'package:json_annotation/json_annotation.dart';

import '../../../domain/model/weather_model.dart';
import 'weather_mapper.dart';

part 'current_dto.g.dart';

@JsonSerializable()
class CurrentDto implements DomainMappable<CurrentModel> {
  final CurrentData current;

  CurrentDto(this.current);

  @override
  CurrentModel toDomain() => CurrentModel(tempC: current.tempC);

  factory CurrentDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentDtoToJson(this);
}

@JsonSerializable()
class CurrentData {
  @JsonKey(name: 'temp_c')
  final double tempC;

  CurrentData(this.tempC);

  factory CurrentData.fromJson(Map<String, dynamic> json) =>
      _$CurrentDataFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentDataToJson(this);
}
