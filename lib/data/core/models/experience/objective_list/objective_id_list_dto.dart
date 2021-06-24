import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';

part 'objective_id_list_dto.freezed.dart';
part 'objective_id_list_dto.g.dart';

@freezed
class ObjectiveIdListDto with _$ObjectiveIdListDto {
  const ObjectiveIdListDto._();

  const factory ObjectiveIdListDto({
    required List<String> objectivesIds,
  }) = _ObjectiveIdListDto;

  factory ObjectiveIdListDto.fromDomain(ObjectiveList objectives) => ObjectiveIdListDto(
        objectivesIds: objectives.getOrCrash().map((objective) => objective.id.getOrCrash()).dart,
      );

  factory ObjectiveIdListDto.fromJson(Map<String, dynamic> json) => _$ObjectiveIdListDtoFromJson(json);
}
