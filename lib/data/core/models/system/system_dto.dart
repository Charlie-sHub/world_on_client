import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/system/system.dart';

part 'system_dto.freezed.dart';

part 'system_dto.g.dart';

@freezed
abstract class SystemDto implements _$SystemDto {
  const SystemDto._();

  const factory SystemDto({
    @required int id,
    @required String name,
    @required String type,
    @required String company,
  }) = _SystemDto;

  factory SystemDto.fromDomain(System system) => SystemDto(
        id: system.id,
        name: system.name,
        type: system.type,
        company: system.company,
      );

  System toDomain() => System(
        id: id,
        name: name,
        type: type,
        company: company,
      );

  factory SystemDto.fromJson(Map<String, dynamic> json) => _$SystemDtoFromJson(json);
}
