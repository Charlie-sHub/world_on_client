import 'package:dartz/dartz.dart';
import 'package:worldon/data/core/moor/daos/moor_users_dao/moor_user_with_relations.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

User moorUserWithRelationsToDomainUser(MoorUserWithRelations userWithRelations) {
  final _blockedUsersIds = userWithRelations.blockedUsersIds ?? <int>{};
  final _followedUsersIds = userWithRelations.followedUsersIds ?? <int>{};
  final _interestsIds = userWithRelations.interestsIds ?? <int>{};
  final _achievementsIds = userWithRelations.achievementsIds ?? <int>{};
  final _experiencesDoneIds = userWithRelations.experiencesDoneIds ?? <int>{};
  final _experiencesLikedIds = userWithRelations.experiencesLikedIds ?? <int>{};
  final _experiencesToDoIds = userWithRelations.experiencesToDoIds ?? <int>{};
  return User.empty().copyWith(
    id: userWithRelations.user.id,
    name: Name(userWithRelations.user.name),
    username: Name(userWithRelations.user.username),
    password: Password(userWithRelations.user.password),
    email: EmailAddress(userWithRelations.user.email),
    birthday: PastDate(userWithRelations.user.birthday),
    description: EntityDescription(userWithRelations.user.description),
    imageURL: userWithRelations.user.imageURL,
    imageFileOption: none(),
    level: UserLevel(userWithRelations.user.level),
    experiencePoints: ExperiencePoints(userWithRelations.user.experiencePoints),
    privacy: userWithRelations.user.privacy,
    adminPowers: userWithRelations.user.adminPowers,
    enabled: userWithRelations.user.enabled,
    lastLogin: PastDate(userWithRelations.user.lastLogin),
    creationDate: PastDate(userWithRelations.user.creationDate),
    modificationDate: PastDate(userWithRelations.user.modificationDate),
    options: Options.empty(),
    blockedUsersIds: _blockedUsersIds,
    followedUsersIds: _followedUsersIds,
    interestsIds: _interestsIds,
    achievementsIds: _achievementsIds,
    experiencesDoneIds: _experiencesDoneIds,
    experiencesLikedIds: _experiencesLikedIds,
    experiencesToDoIds: _experiencesToDoIds,
  );
}
