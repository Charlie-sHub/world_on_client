import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/device/device.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'device_dto.freezed.dart';
part 'device_dto.g.dart';

// This, System and Location see pretty pointless
@freezed
abstract class DeviceDto implements _$DeviceDto {
  const DeviceDto._();

  const factory DeviceDto({
    @required String id,
    @required String name,
    @required String type,
    @required String company,
  }) = _DeviceDto;

  factory DeviceDto.fromDomain(Device device) => DeviceDto(
        id: device.id.getOrCrash(),
        name: device.name,
        type: device.type,
        company: device.company,
      );

  Device toDomain() => Device(
        id: UniqueId.fromUniqueString(id),
        name: name,
        type: type,
        company: company,
      );

  factory DeviceDto.fromJson(Map<String, dynamic> json) => _$DeviceDtoFromJson(json);
}
