import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/misc/server_timestamp_converter.dart';
import 'package:worldon/data/core/models/device/device_dto.dart';
import 'package:worldon/data/core/models/item/item_dto.dart';
import 'package:worldon/data/core/models/options/options_dto.dart';
import 'package:worldon/data/core/models/promotion_plan/promotion_plan_dto.dart';
import 'package:worldon/data/core/models/system/system_dto.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String id,
    required String name,
    required String username,
    // Shouldn't this be encrypted in some way?
    // Maybe it shouldn't even be part of the dto at all, as Firebase handles it at login time
    required String password,
    required String email,
    @ServerTimestampConverter() required DateTime birthday,
    required String description,
    required String imageURL,
    required int level,
    required int experiencePoints,
    required bool privacy,
    required bool adminPowers,
    required bool enabled,
    @ServerTimestampConverter() required DateTime lastLogin,
    @ServerTimestampConverter() required DateTime creationDate,
    @ServerTimestampConverter() required DateTime modificationDate,
    required OptionsDto options,
    required Set<String> blockedUsersIds,
    required Set<String> followedUsersIds,
    required Set<String> interestsIds,
    required Set<String> achievementsIds,
    required Set<String> experiencesDoneIds,
    required Set<String> experiencesLikedIds,
    required Set<String> experiencesToDoIds,
    required Set<DeviceDto> devices,
    required Set<SystemDto> systems,
    required Set<ItemDto> items,
    required int coins,
    required int followersAmount,
    required PromotionPlanDto promotionPlan,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) => UserDto(
        id: user.id.getOrCrash(),
        name: user.name.getOrCrash(),
        username: user.username.getOrCrash(),
        password: user.password.getOrCrash(),
        email: user.email.getOrCrash(),
        birthday: user.birthday.getOrCrash(),
        description: user.description.getOrCrash(),
        imageURL: user.imageURL,
        level: user.level.getOrCrash(),
        experiencePoints: user.experiencePoints.getOrCrash(),
        privacy: user.privacy,
        adminPowers: user.adminPowers,
        enabled: user.enabled,
        lastLogin: user.lastLogin.getOrCrash(),
        creationDate: user.creationDate.getOrCrash(),
        modificationDate: user.modificationDate.getOrCrash(),
        options: OptionsDto.fromDomain(user.options),
        blockedUsersIds: user.blockedUsersIds.map((uniqueId) => uniqueId.getOrCrash()).toSet(),
        followedUsersIds: user.followedUsersIds.map((uniqueId) => uniqueId.getOrCrash()).toSet(),
        interestsIds: user.interestsIds.map((uniqueId) => uniqueId.getOrCrash()).toSet(),
        achievementsIds: user.achievementsIds.map((uniqueId) => uniqueId.getOrCrash()).toSet(),
        experiencesDoneIds: user.experiencesDoneIds.map((uniqueId) => uniqueId.getOrCrash()).toSet(),
        experiencesLikedIds: user.experiencesLikedIds.map((uniqueId) => uniqueId.getOrCrash()).toSet(),
        experiencesToDoIds: user.experiencesToDoIds.map((uniqueId) => uniqueId.getOrCrash()).toSet(),
        devices: user.devices.map((device) => DeviceDto.fromDomain(device)).toSet(),
        systems: user.systems.map((system) => SystemDto.fromDomain(system)).toSet(),
        items: user.items.map((item) => ItemDto.fromDomain(item)).toSet(),
        coins: user.coins,
        followersAmount: user.followersAmount,
        promotionPlan: PromotionPlanDto.fromDomain(user.promotionPlan),
      );

  User toDomain() => User(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        username: Name(username),
        password: Password(password),
        email: EmailAddress(email),
        birthday: PastDate(birthday),
        description: EntityDescription(description),
        imageURL: imageURL,
        imageFileOption: dartz.none(),
        level: UserLevel(level),
        experiencePoints: ExperiencePoints(experiencePoints),
        privacy: privacy,
        adminPowers: adminPowers,
        enabled: enabled,
        lastLogin: PastDate(lastLogin),
        creationDate: PastDate(creationDate),
        modificationDate: PastDate(modificationDate),
        options: options.toDomain(),
        blockedUsersIds: blockedUsersIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
        followedUsersIds: followedUsersIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
        interestsIds: interestsIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
        achievementsIds: achievementsIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
        experiencesDoneIds: experiencesDoneIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
        experiencesLikedIds: experiencesLikedIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
        experiencesToDoIds: experiencesToDoIds.map((idString) => UniqueId.fromUniqueString(idString)).toSet(),
        devices: devices.map((deviceDto) => deviceDto.toDomain()).toSet(),
        systems: systems.map((systemDto) => systemDto.toDomain()).toSet(),
        items: items.map((itemDto) => itemDto.toDomain()).toSet(),
        coins: coins,
        followersAmount: followersAmount,
        promotionPlan: promotionPlan.toDomain(),
      );

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot document) => UserDto.fromJson(
        document.data()!,
      ).copyWith(
        id: document.id,
      );
}
