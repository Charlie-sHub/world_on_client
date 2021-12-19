import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'achievement.freezed.dart';

/// [Achievement] entity class.
///
/// [Achievement]s can be earned by [User]s for doing certain things in the application, getting rewarded for doing so.
@freezed
class Achievement with _$Achievement {
  const Achievement._();

  const factory Achievement({
    required UniqueId id,
    required Name name,
    required EntityDescription description,
    required String imageURL,
    required Option<File> imageFile,
    required String type,
    required int
        requisite, // This will probably be reworked in the future to accommodate different kinds of achievements
    required ExperiencePoints experiencePoints,
    required UniqueId creatorId,
    required PastDate creationDate,
    required PastDate modificationDate,
    required TagSet tags,
  }) = _Achievement;

  factory Achievement.empty() => Achievement(
        id: UniqueId(),
        name: Name(""),
        description: EntityDescription(""),
        imageURL: "",
        imageFile: none(),
        type: "",
        requisite: 1,
        experiencePoints: ExperiencePoints(1),
        creatorId: UniqueId(),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
        tags: TagSet(const KtSet.empty()),
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit
      .andThen(description.failureOrUnit)
      .andThen(experiencePoints.failureOrUnit)
      .andThen(creationDate.failureOrUnit)
      .andThen(modificationDate.failureOrUnit)
      .andThen(tags.failureOrUnit)
      .fold(
        (failure) => some(failure),
        (_) => none(),
      );

  bool get isValid => failureOption.isNone();
}
