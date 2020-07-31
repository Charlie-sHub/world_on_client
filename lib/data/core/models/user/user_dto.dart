import 'dart:io';

import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/models/achievement/achievement_dto.dart';
import 'package:worldon/data/core/models/device/device_dto.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/options/options_dto.dart';
import 'package:worldon/data/core/models/system/system_dto.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto({
    @required int id,
    @required String name,
    @required String username,
    // Shouldn't this be encrypted in some way?
    @required String password,
    @required String email,
    @required String birthday,
    @required String description,
    @required String imageURL,
    @required List<int> imageFile,
    @required int level,
    @required int experiencePoints,
    @required bool privacy,
    @required bool adminPowers,
    @required bool enabled,
    @required String lastLogin,
    @required String creationDate,
    @required String modificationDate,
    @required OptionsDto options,
    @required Set<UserDto> blockedUsers,
    @required Set<UserDto> followedUsers,
    @required Set<DeviceDto> devices,
    @required Set<SystemDto> systems,
    @required Set<TagDto> interests,
    @required Set<AchievementDto> achievements,
    @required Set<ExperienceDto> experiencesDone,
    @required Set<ExperienceDto> experiencesLiked,
    @required Set<ExperienceDto> experiencesToDo,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) => UserDto(
        id: user.id,
        name: user.name.getOrCrash(),
        username: user.username.getOrCrash(),
        password: user.password.getOrCrash(),
        email: user.email.getOrCrash(),
        birthday: user.birthday.getOrCrash().toIso8601String(),
        description: user.description.getOrCrash(),
        imageURL: user.imageURL,
        imageFile: user.imageFileOption.fold(
          () => [],
          (imageFile) => imageFile.readAsBytesSync(),
        ),
        level: user.level.getOrCrash(),
    experiencePoints: user.experiencePoints.getOrCrash(),
    privacy: user.privacy,
    adminPowers: user.adminPowers,
    enabled: user.enabled,
    lastLogin: user.lastLogin.getOrCrash().toIso8601String(),
    creationDate: user.creationDate.getOrCrash().toIso8601String(),
    modificationDate: user.modificationDate.getOrCrash().toIso8601String(),
    options: OptionsDto.fromDomain(user.options),
    blockedUsers: user.blockedUsers.map((user) => UserDto.fromDomain(user)).toSet(),
    followedUsers: user.followedUsers.map((user) => UserDto.fromDomain(user)).toSet(),
    devices: user.devices.map((device) => DeviceDto.fromDomain(device)).toSet(),
    systems: user.systems.map((system) => SystemDto.fromDomain(system)).toSet(),
    interests: user.interests.map((tag) => TagDto.fromDomain(tag)).toSet(),
    achievements: user.achievements.map((achievement) => AchievementDto.fromDomain(achievement)).toSet(),
    experiencesDone: user.experiencesDone.map((experience) => ExperienceDto.fromDomain(experience)).toSet(),
    experiencesLiked: user.experiencesLiked.map((experience) => ExperienceDto.fromDomain(experience)).toSet(),
    experiencesToDo: user.experiencesToDo.map((experience) => ExperienceDto.fromDomain(experience)).toSet(),
  );

  User toDomain() => User(
    id: id,
    name: Name(name),
    username: Name(username),
    password: Password(password),
    email: EmailAddress(email),
    birthday: PastDate(DateTime.parse(birthday)),
    description: EntityDescription(description),
    imageURL: imageURL,
    imageFileOption: dartz.some(File("test.jpg")
      ..openWrite().write(imageFile)),
    level: UserLevel(level),
    experiencePoints: ExperiencePoints(experiencePoints),
    privacy: privacy,
    adminPowers: adminPowers,
    enabled: enabled,
    lastLogin: PastDate(DateTime.parse(lastLogin)),
    creationDate: PastDate(DateTime.parse(creationDate)),
    modificationDate: PastDate(DateTime.parse(modificationDate)),
    options: options.toDomain(),
    blockedUsers: blockedUsers.map((userDto) => userDto.toDomain()).toSet(),
    followedUsers: followedUsers.map((userDto) => userDto.toDomain()).toSet(),
    devices: devices.map((deviceDto) => deviceDto.toDomain()).toSet(),
    systems: systems.map((systemDto) => systemDto.toDomain()).toSet(),
    interests: interests.map((tagDto) => tagDto.toDomain()).toSet(),
    achievements: achievements.map((achievementDto) => achievementDto.toDomain()).toSet(),
    experiencesDone: experiencesDone.map((experiencesDto) => experiencesDto.toDomain()).toSet(),
    experiencesLiked: experiencesLiked.map((experiencesDto) => experiencesDto.toDomain()).toSet(),
    experiencesToDo: experiencesToDo.map((experiencesDto) => experiencesDto.toDomain()).toSet(),
  );

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
