import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
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
abstract class Experience implements _$Experience {
  const Experience._();

  const factory Experience({
    int id,
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

  factory Experience.empty() => Experience(
        name: Name(""),
        description: EntityDescription(""),
        imageURLs: <String>{},
        coordinates: Coordinates.empty(),
        location: Location.empty(),
        creator: User.empty(),
        difficulty: Difficulty(1),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
        objectives: ObjectiveSet(<Objective>{Objective.empty()}),
        rewards: RewardSet(<Reward>{Reward.empty()}),
        tags: TagSet(<Tag>{Tag.empty()}),
        comments: <Comment>{},
        likedBy: <User>{},
        doneBy: <User>{},
      );
}
