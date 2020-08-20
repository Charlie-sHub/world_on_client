import 'package:dartz/dartz.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

User moorUserToDomainUser(MoorUser _moorUser, MoorOption _moorOptions) => User(
      name: Name(_moorUser.name),
      username: Name(_moorUser.username),
      password: Password(_moorUser.password),
      email: EmailAddress(_moorUser.email),
      birthday: PastDate(_moorUser.birthday),
      description: EntityDescription(_moorUser.description),
      imageURL: _moorUser.imageURL,
      imageFileOption: none(),
      level: UserLevel(_moorUser.level),
      experiencePoints: ExperiencePoints(_moorUser.experiencePoints),
      privacy: _moorUser.privacy,
      adminPowers: _moorUser.adminPowers,
      enabled: _moorUser.enabled,
      lastLogin: PastDate(_moorUser.lastLogin),
      creationDate: PastDate(_moorUser.creationDate),
      modificationDate: PastDate(_moorUser.modificationDate),
      options: Options(
        id: _moorOptions.id,
        languageCode: _moorOptions.languageCode,
      ),
      blockedUsers: {},
      followedUsers: {},
      devices: {},
      systems: {},
      interests: {},
      achievements: {},
      experiencesDone: {},
      experiencesLiked: {},
      experiencesToDo: {},
    );
