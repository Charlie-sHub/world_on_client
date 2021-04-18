import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'reward.freezed.dart';

/// [Reward] entity class.
///
/// [Reward]s are given to [User]s for doing [Experience]s, rewards will be set by the [User]s creating the Experience.
@freezed
class Reward with _$Reward {
  const Reward._();

  const factory Reward({
    required UniqueId id,
    required Name name,
    required EntityDescription description,
    required String imageURL,
    required Option<File> imageFile,
  }) = _Reward;

  factory Reward.empty() => Reward(
        id: UniqueId(),
        name: Name(""),
        description: EntityDescription(""),
        imageURL: "",
        imageFile: none(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.andThen(description.failureOrUnit).fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }

  bool get isValid => failureOption.isNone();
}
