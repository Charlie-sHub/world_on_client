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
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

User moorUserWithRelationsToDomainUser(MoorUserWithRelations _userWithRelations) {
  final _blockedUsersIds = _userWithRelations.blockedUsersIds ?? <String>{};
  final _followedUsersIds = _userWithRelations.followedUsersIds ?? <String>{};
  final _interestsIds = _userWithRelations.interestsIds ?? <String>{};
  final _achievementsIds = _userWithRelations.achievementsIds ?? <String>{};
  final _experiencesDoneIds = _userWithRelations.experiencesDoneIds ?? <String>{};
  final _experiencesLikedIds = _userWithRelations.experiencesLikedIds ?? <String>{};
  final _experiencesToDoIds = _userWithRelations.experiencesToDoIds ?? <String>{};
  return User.empty().copyWith(
    id: UniqueId.fromUniqueString(_userWithRelations.user.id),
    name: Name(_userWithRelations.user.name),
    username: Name(_userWithRelations.user.username),
    password: Password(_userWithRelations.user.password),
    email: EmailAddress(_userWithRelations.user.email),
    birthday: PastDate(_userWithRelations.user.birthday),
    description: EntityDescription(_userWithRelations.user.description),
    imageURL: _userWithRelations.user.imageURL,
    imageFileOption: none(),
    level: UserLevel(_userWithRelations.user.level),
    experiencePoints: ExperiencePoints(_userWithRelations.user.experiencePoints),
    privacy: _userWithRelations.user.privacy,
    adminPowers: _userWithRelations.user.adminPowers,
    enabled: _userWithRelations.user.enabled,
    lastLogin: PastDate(_userWithRelations.user.lastLogin),
    creationDate: PastDate(_userWithRelations.user.creationDate),
    modificationDate: PastDate(_userWithRelations.user.modificationDate),
    options: Options.empty(),
    blockedUsersIds: _blockedUsersIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
    followedUsersIds: _followedUsersIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
    interestsIds: _interestsIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
    achievementsIds: _achievementsIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
    experiencesDoneIds: _experiencesDoneIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
    experiencesLikedIds: _experiencesLikedIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
    experiencesToDoIds: _experiencesToDoIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
  );
}
