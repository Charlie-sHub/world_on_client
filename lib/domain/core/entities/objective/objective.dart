import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'objective.freezed.dart';

/// [Objective] entity class.
///
/// [Objective]s are what's required by the [Experience] of the [User] doing it.
@freezed
class Objective with _$Objective {
  const Objective._();

  const factory Objective({
    required UniqueId id,
    required EntityDescription description,
    required Coordinates coordinates,
    required String imageURL,
    required Option<File> imageFile,
  }) = _Objective;

  factory Objective.empty() => Objective(
        id: UniqueId(),
        description: EntityDescription(""),
        coordinates: Coordinates.empty(),
        imageURL: "",
        imageFile: none(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return description.failureOrUnit.andThen(coordinates.failureOrUnit).fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }

  bool get isValid => failureOption.isNone();
}
