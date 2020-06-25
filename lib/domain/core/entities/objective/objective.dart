import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

part 'objective.freezed.dart';

/// [Objective] entity class.
///
/// [Objective]s are what's required by the [Experience] of the [User]doing it.
@freezed
abstract class Objective with _$Objective {
  const factory Objective({
    @required int id,
    @required EntityDescription description,
    @required Coordinates coordinates,
    @required String imageName,
  }) = _Objective;
}
