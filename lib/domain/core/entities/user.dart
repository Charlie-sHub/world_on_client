import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/device.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/system.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

/// [User] entity class
///
/// [User]s are of course the cornerstone of the application
@Deprecated("Use the freezed classes")
class User extends Equatable {
  final int id;
  final Name name;
  final Name username;
  final Password password;
  final EmailAddress email;
  final PastDate birthday;
  final EntityDescription description;
  final String imageURL;
  final UserLevel level;
  final ExperiencePoints experiencePoints;
  final bool privacy;
  final bool adminPowers;
  final bool enabled;
  final PastDate lastLogin;
  final PastDate creationDate;
  final PastDate modificationDate;
  final Options options;
  final Set<User> blockedUsers;
  final Set<User> followedUsers;
  final Set<Device> devices;
  final Set<System> systems;
  
  // Users shouldn't have a limited amount of interests hence why this is a normal Set instead of a TagSet
  // Could change in the future though, maybe with a UserTagSet class with a different max size than the Experience one
  final Set<Tag> interests;
  final Set<Achievement> achievements;
  final Set<Experience> experiencesDone;
  final Set<Experience> experiencesLiked;
  final Set<Experience> experiencesToDo;
  
  const User({
    // TODO: Maybe i'll have to make only the username and password be required so facilitate authentication
    @required this.id,
    @required this.name,
    @required this.username,
    @required this.password,
    @required this.email,
    @required this.birthday,
    @required this.description,
    @required this.imageURL,
    @required this.level,
    @required this.experiencePoints,
    @required this.privacy,
    @required this.adminPowers,
    @required this.enabled,
    @required this.lastLogin,
    @required this.creationDate,
    @required this.modificationDate,
    @required this.options,
    @required this.blockedUsers,
    @required this.followedUsers,
    @required this.devices,
    @required this.systems,
    @required this.interests,
    @required this.achievements,
    @required this.experiencesDone,
    @required this.experiencesLiked,
    @required this.experiencesToDo,
  });
  
  // Probably useless as we'll change to Freezed entities most likely
  @override
  List<Object> get props => [
    // Add props as necessary, though carefully as it might break the use cases with authorization
    id,
    /*
          name,
          username,
          password,
          email,
          birthday,
          biography,
          imageName,
          level,
          experiencePoints,
          privacy,
          adminPowers,
          enabled,
          lastLogin,
          creationDate,
          modificationDate,
          options,
          blockedUsers,
          followedUsers,
          devices,
          systems,
          interests,
          achievements,
          experiencesDone,
          experiencesLiked,
          experiencesToDo,
        */
  ];
}
