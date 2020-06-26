import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/device/device.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/entities/system/system.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
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
abstract class User implements _$User {
  const User._();

  const factory User({
    int id,
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
    @required Set<Tag> interests,
    @required Set<Achievement> achievements,
    @required Set<Experience> experiencesDone,
    @required Set<Experience> experiencesLiked,
    @required Set<Experience> experiencesToDo,
  }) = _User;

  factory User.empty() => User(
        name: Name(""),
        username: Name(""),
        password: Password(""),
        email: EmailAddress(""),
        birthday: PastDate(DateTime.now()),
        description: EntityDescription(""),
        imageURL: "",
        level: UserLevel(0),
        experiencePoints: ExperiencePoints(0),
        privacy: false,
        adminPowers: false,
        enabled: true,
        lastLogin: PastDate(DateTime.now()),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
        options: const Options(
          id: 1,
          languageCode: "",
        ),
        blockedUsers: <User>{},
        followedUsers: <User>{},
        devices: <Device>{},
        systems: <System>{},
        interests: <Tag>{},
        achievements: <Achievement>{},
        experiencesDone: <Experience>{},
        experiencesLiked: <Experience>{},
        experiencesToDo: <Experience>{},
      );
// TODO: User.toLogin
// TODO: User.toRegister
}
