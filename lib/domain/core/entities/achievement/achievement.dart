import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

part 'achievement.freezed.dart';

/// [Achievement] entity class.
///
/// [Achievement]s can be earned by [User]s for doing certain things in the application, getting rewarded for doing so.
@freezed
abstract class Achievement with _$Achievement {
  const factory Achievement({
    @required int id,
    @required Name name,
    @required EntityDescription description,
    // TODO: Make a value object and validator for image URLs from World On's back-end
    // Maybe Firestore will make that unnecessary
    @required String imageURL,
    @required String type,
    @required int requisite, // This will probably be reworked in the future to accommodate different kinds of achievements
    @required ExperiencePoints experiencePoints,
    @required User creator,
    @required PastDate creationDate,
    @required PastDate modificationDate,
    @required TagSet tags,
  }) = _Achievement;
// TODO: create factories for "empty" entities
}
