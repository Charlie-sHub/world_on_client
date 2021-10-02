// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objective_id_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ObjectiveIdListDto _$$_ObjectiveIdListDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ObjectiveIdListDto(
      objectivesIds: (json['objectivesIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ObjectiveIdListDtoToJson(
        _$_ObjectiveIdListDto instance) =>
    <String, dynamic>{
      'objectivesIds': instance.objectivesIds,
    };
