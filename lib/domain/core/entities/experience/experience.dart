import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

part 'experience.freezed.dart';

/// [Experience] entity class.
///
/// [Experience]s are the core of World On, little [User] created adventures for other [User]s to enjoy.
@freezed
abstract class Experience with _$Experience {
  const factory Experience({
    @required int id,
    @required Name name,
    @required EntityDescription description,
    @required Set<String> imageURLs,
    @required Coordinates coordinates,
    @required Location location,
    @required User creator,
    @required Difficulty difficulty,
    @required PastDate creationDate,
    @required PastDate modificationDate,
    @required ObjectiveSet objectives,
    @required RewardSet rewards,
    @required TagSet tags,
    @required Set<Comment> comments,
    @required Set<User> likedBy,
    @required Set<User> doneBy,
  }) = _Experience;
}
