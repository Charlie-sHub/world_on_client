import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

part 'device.freezed.dart';

/// [Device] entity class.
///
/// [Device]s gives the administration a way to consult how the [User]s are getting to the application, to better focus out efforts in the future.
@freezed
abstract class Device with _$Device {
  const factory Device({
    @required int id,
    @required String name,
    @required String type,
    @required String company,
  }) = _Device;
}
