import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/device.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/system.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class EditUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface repository;

  EditUser(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting.id == params.id || params.userRequesting.adminPowers;
    if (isAuthorized) {
      final user = User(
        id: params.id,
        name: params.name,
        username: params.username,
        password: params.password,
        email: params.email,
        birthday: params.birthday,
        description: params.description,
        imageURL: params.imageName,
        level: params.level,
        experiencePoints: params.experiencePoints,
        privacy: params.privacy,
        adminPowers: params.adminPowers,
        enabled: params.enabled,
        lastLogin: params.lastLogin,
        creationDate: params.creationDate,
        modificationDate: PastDate(DateTime.now()),
        options: params.options,
        blockedUsers: params.blockedUsers,
        followedUsers: params.followedUsers,
        devices: params.devices,
        systems: params.systems,
        interests: params.interests,
        achievements: params.achievements,
        experiencesDone: params.experiencesDone,
        experiencesLiked: params.experiencesLiked,
        experiencesToDo: params.experiencesToDo,
      );
      return repository.editUser(user);
    } else {
      return left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()));
    }
  }
}

class Params {
  final User userRequesting;
  final int id;
  final Name name;
  final Name username;
  final Password password;
  final EmailAddress email;
  final PastDate birthday;
  final EntityDescription description;
  final String imageName;
  final UserLevel level;
  final ExperiencePoints experiencePoints;
  final bool privacy;
  final bool adminPowers;
  final bool enabled;
  final PastDate lastLogin;
  final PastDate creationDate;
  final Options options;
  final Set<Tag> interests;

  // TODO: Should these Sets be here?
  // They can't be changed when editing the User is editing its profile, yet leaving them null could be problematic as it may nullify the entries in the database
  final Set<User> blockedUsers;
  final Set<User> followedUsers;
  final Set<Device> devices;
  final Set<System> systems;
  final Set<Achievement> achievements;
  final Set<Experience> experiencesDone;
  final Set<Experience> experiencesLiked;
  final Set<Experience> experiencesToDo;

  Params({
    @required this.userRequesting,
    @required this.id,
    @required this.name,
    @required this.username,
    @required this.password,
    @required this.email,
    @required this.birthday,
    @required this.description,
    @required this.imageName,
    @required this.level,
    @required this.experiencePoints,
    @required this.privacy,
    @required this.adminPowers,
    @required this.enabled,
    @required this.lastLogin,
    @required this.creationDate,
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
}
