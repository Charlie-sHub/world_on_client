import 'dart:io';

import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'primitive_reward.freezed.dart';

@Deprecated("This class is not necessary for the current way to create rewards")
@freezed
class PrimitiveReward with _$PrimitiveReward {
  @Deprecated("This class is not necessary for the current way to create rewards")
  const PrimitiveReward._();

  @Deprecated("This class is not necessary for the current way to create rewards")
  const factory PrimitiveReward({
    required UniqueId id,
    required String name,
    required String description,
    required File? imageFile,
  }) = _PrimitiveReward;

  @Deprecated("This class is not necessary for the current way to create rewards")
  factory PrimitiveReward.empty() => PrimitiveReward(
        id: UniqueId(),
        name: "",
        description: "",
        imageFile: null,
      );

  @Deprecated("This class is not necessary for the current way to create rewards")
  factory PrimitiveReward.fromDomain(Reward reward) => PrimitiveReward(
        id: reward.id,
        name: reward.name.getOrCrash(),
        description: reward.description.getOrCrash(),
        imageFile: reward.imageFile.fold(
          () {},
          dartz.id,
        ),
      );

  Reward toDomain() => Reward(
        id: id,
        name: Name(name),
        description: EntityDescription(description),
        imageURL: "",
        imageFile: dartz.some(imageFile!),
      );
}
