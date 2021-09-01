import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'device.freezed.dart';

/// [Device] entity class.
///
/// [Device]s gives the administration a way to consult how the [User]s are getting to the application, to better focus out efforts in the future.
@freezed
class Device with _$Device {
  const Device._();

  const factory Device({
    required UniqueId id,
    required String name,
    required String type,
    required String company,
  }) = _Device;

  factory Device.empty() => Device(
        id: UniqueId(),
        name: "",
        type: "",
        company: "",
      );
}
