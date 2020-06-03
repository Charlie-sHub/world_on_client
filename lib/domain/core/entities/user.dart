import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/device.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/system.dart';
import 'package:worldon/domain/core/entities/tag.dart';

/// [User] entity class
///
/// Users are of course the cornerstone of the application
class User extends Equatable {
  final int id;
  final String name;
  final String username;
  final String password;
  final String email;
  final DateTime birthday;
  final String biography;
  final String imageName;
  final int level;
  final int experiencePoints;
  final bool privacy;
  final bool adminPowers;
  final bool enabled;
  final DateTime lastLogin;
  final DateTime creationDate;
  final DateTime modificationDate;
  final Options options;
  final Set<User> blockedUsers;
  final Set<User> followedUsers;
  final Set<Device> devices;
  final Set<System> systems;
  final Set<Tag> interests;
  final Set<Achievement> achievements;
  final Set<Experience> experiencesDone;
  final Set<Experience> experiencesLiked;
  final Set<Experience> experiencesToDo;

  const User({
    // Maybe i'll have to make only the username and password be required so facilitate authentication
    @required this.id,
    @required this.name,
    @required this.username,
    @required this.password,
    @required this.email,
    @required this.birthday,
    @required this.biography,
    @required this.imageName,
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
