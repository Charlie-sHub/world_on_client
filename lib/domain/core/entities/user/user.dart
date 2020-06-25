import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/device/device.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/entities/system/system.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

part 'user.freezed.dart';

/// [User] entity class
///
/// [User]s are of course the cornerstone of the application
@freezed
abstract class User with _$User {
  const factory User({
    @required int id,
    @required Name name,
    @required Name username,
    @required Password password,
    @required EmailAddress email,
    @required PastDate birthday,
    @required EntityDescription description,
    @required String imageURL,
    @required UserLevel level,
    @required ExperiencePoints experiencePoints,
    @required bool privacy,
    @required bool adminPowers,
    @required bool enabled,
    @required PastDate lastLogin,
    @required PastDate creationDate,
    @required PastDate modificationDate,
    @required Options options,
    @required Set<User> blockedUsers,
    @required Set<User> followedUsers,
    @required Set<Device> devices,
    @required Set<System> systems,
  }) = _User;
}
