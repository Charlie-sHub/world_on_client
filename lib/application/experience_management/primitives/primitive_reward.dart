import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

part 'primitive_reward.freezed.dart';

@freezed
abstract class PrimitiveReward implements _$PrimitiveReward {
  const PrimitiveReward._();

  const factory PrimitiveReward({
    @required String name,
    @required String description,
    @required File imageFile,
  }) = _PrimitiveReward;

  factory PrimitiveReward.empty() => PrimitiveReward(
        name: "",
        description: "",
        imageFile: null,
      );

  factory PrimitiveReward.fromDomain(Reward reward) => PrimitiveReward(
        name: reward.name.getOrCrash(),
        description: reward.description.getOrCrash(),
        imageFile: reward.imageFile.fold(
          () => null,
          id,
        ),
      );

  Reward toDomain() => Reward(
        name: Name(name),
        description: EntityDescription(description),
        imageURL: "",
        imageFile: some(imageFile),
      );
}
