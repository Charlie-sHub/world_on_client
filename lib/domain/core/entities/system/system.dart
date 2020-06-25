import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

part 'system.freezed.dart';

/// [System] entity class.
///
/// [System]s gives the administration a way to consult how the [User]s are getting to the application, to better focus out efforts in the future.
@freezed
abstract class System with _$System {
  const factory System({
    @required int id,
    @required String name,
    @required String type,
    @required String company,
  }) = _System;
}
