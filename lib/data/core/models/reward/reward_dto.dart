import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'reward_dto.freezed.dart';
part 'reward_dto.g.dart';

@freezed
abstract class RewardDto implements _$RewardDto {
  const RewardDto._();

  const factory RewardDto({
    @required String id,
    @required String name,
    @required String description,
    @required String imageURL,
  }) = _RewardDto;

  factory RewardDto.fromDomain(Reward reward) => RewardDto(
        id: reward.id.getOrCrash(),
        name: reward.name.getOrCrash(),
        description: reward.description.getOrCrash(),
        imageURL: reward.imageURL,
      );

  Reward toDomain() => Reward(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        description: EntityDescription(description),
        imageURL: imageURL,
        imageFile: dartz.none(),
      );

  factory RewardDto.fromJson(Map<String, dynamic> json) => _$RewardDtoFromJson(json);

  factory RewardDto.fromFirestore(DocumentSnapshot document) => RewardDto.fromJson(
        document.data(),
      ).copyWith(
        id: document.id,
      );
}
