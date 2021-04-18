import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'system.freezed.dart';

/// [System] entity class.
///
/// [System]s gives the administration a way to consult how the [User]s are getting to the application, to better focus out efforts in the future.
@freezed
class System with _$System {
  const System._();

  const factory System({
    required UniqueId id,
    required String name,
    required String type,
    required String company,
  }) = _System;

  factory System.empty() => System(
        id: UniqueId(),
        name: "",
        type: "",
        company: "",
      );
}
