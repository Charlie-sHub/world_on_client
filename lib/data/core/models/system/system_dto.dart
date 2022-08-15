import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/system/system.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'system_dto.freezed.dart';
part 'system_dto.g.dart';

@freezed
class SystemDto with _$SystemDto {
  const SystemDto._();

  const factory SystemDto({
    required String id,
    required String name,
    required String type,
    required String company,
  }) = _SystemDto;

  factory SystemDto.fromDomain(System system) => SystemDto(
        id: system.id.getOrCrash(),
        name: system.name,
        type: system.type,
        company: system.company,
      );

  System toDomain() => System(
        id: UniqueId.fromUniqueString(id),
        name: name,
        type: type,
        company: company,
      );

  factory SystemDto.fromJson(Map<String, dynamic> json) => _$SystemDtoFromJson(
        json,
      );
}
