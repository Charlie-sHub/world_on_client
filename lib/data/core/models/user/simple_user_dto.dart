import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

part 'simple_user_dto.freezed.dart';
part 'simple_user_dto.g.dart';

@freezed
class SimpleUserDto with _$SimpleUserDto {
  const SimpleUserDto._();

  const factory SimpleUserDto({
    required String id,
    required String name,
    required String username,
    required String imageURL,
    required int level,
    required int experiencePoints,
    required bool adminPowers,
    required int followersAmount,
  }) = _SimpleUserDto;

  factory SimpleUserDto.fromDomain(SimpleUser user) => SimpleUserDto(
        id: user.id.getOrCrash(),
        name: user.name.getOrCrash(),
        username: user.username.getOrCrash(),
        imageURL: user.imageURL,
        level: user.level.getOrCrash(),
        experiencePoints: user.experiencePoints.getOrCrash(),
        adminPowers: user.adminPowers,
        followersAmount: user.followersAmount,
      );

  SimpleUser toDomain() => SimpleUser(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        username: Name(username),
        imageURL: imageURL,
        level: UserLevel(level),
        experiencePoints: ExperiencePoints(experiencePoints),
        adminPowers: adminPowers,
        followersAmount: followersAmount,
      );

  factory SimpleUserDto.fromJson(Map<String, dynamic> json) =>
      _$SimpleUserDtoFromJson(json);
}
