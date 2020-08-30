import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

import 'file:///C:/Users/Lucholito/Documents/WorldOn/Client/world_on_project/world_on/lib/core/assets.dart';

MoorUsersCompanion domainUserToMoorUserCompanion(User user) => MoorUsersCompanion.insert(
      name: user.name.getOrCrash(),
      username: user.username.getOrCrash(),
      password: user.password.getOrCrash(),
      email: user.email.getOrCrash(),
      birthday: user.birthday.getOrCrash(),
      description: user.description.getOrCrash(),
      imageURL: user.imageFileOption.fold(
        () => Assets.userPlaceholder,
        (imageFile) => imageFile.path,
      ),
      level: user.level.getOrCrash(),
      experiencePoints: user.experiencePoints.getOrCrash(),
      privacy: user.privacy,
      adminPowers: user.adminPowers,
      enabled: user.enabled,
      lastLogin: user.lastLogin.getOrCrash(),
      creationDate: user.creationDate.getOrCrash(),
      modificationDate: user.modificationDate.getOrCrash(),
      isLoggedIn: true,
    );
