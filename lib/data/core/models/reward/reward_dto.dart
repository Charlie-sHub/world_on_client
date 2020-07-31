import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

part 'reward_dto.freezed.dart';
part 'reward_dto.g.dart';

@freezed
abstract class RewardDto implements _$RewardDto {
  const RewardDto._();

  const factory RewardDto({
    @required int id,
    @required String name,
    @required String description,
    @required String imageURL,
    @required List<int> imageFile,
  }) = _RewardDto;

  factory RewardDto.fromDomain(Reward reward) => RewardDto(
        id: reward.id,
        name: reward.name.getOrCrash(),
        description: reward.description.getOrCrash(),
        imageURL: reward.imageURL,
        imageFile: reward.imageFile.readAsBytesSync(),
      );

  Reward toDomain() => Reward(
    id: id,
    name: Name(name),
    description: EntityDescription(description),
    imageURL: imageURL,
    imageFile: File("test.jpg")
      ..openWrite().write(imageFile),
  );

  factory RewardDto.fromJson(Map<String, dynamic> json) => _$RewardDtoFromJson(json);
}
