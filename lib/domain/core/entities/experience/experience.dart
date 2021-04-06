import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'experience.freezed.dart';

/// [Experience] entity class.
///
/// [Experience]s are the core of World On, little [User] created adventures for other [User]s to enjoy.
@freezed
abstract class Experience implements _$Experience {
  const Experience._();

  const factory Experience({
    // TODO: Add dislike counters
    @required UniqueId id,
    @required Name title,
    @required EntityDescription description,
    @required Set<String> imageURLs,
    @required Option<List<Asset>> imageAssetsOption,
    @required Coordinates coordinates,
    @required Location location,
    @required User creator,
    @required Difficulty difficulty,
    @required PastDate creationDate,
    @required PastDate modificationDate,
    @required ObjectiveList objectives,
    @required RewardSet rewards,
    @required TagSet tags,
    @required Set<Comment> comments,
    @required Set<UniqueId> likedBy,
    @required Set<UniqueId> doneBy,
  }) = _Experience;

  factory Experience.empty() => Experience(
        id: UniqueId(),
        title: Name(""),
        description: EntityDescription(""),
        imageURLs: <String>{},
        imageAssetsOption: none(),
        coordinates: Coordinates.empty(),
        location: Location.empty(),
        creator: User.empty(),
        difficulty: Difficulty(1),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
        objectives: ObjectiveList(const KtList.empty()),
        rewards: RewardSet(const KtSet.empty()),
        tags: TagSet(const KtSet.empty()),
        comments: <Comment>{},
        likedBy: <UniqueId>{},
        doneBy: <UniqueId>{},
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(description.failureOrUnit)
        .andThen(coordinates.failureOrUnit)
        .andThen(creator.failureOrUnit)
        .andThen(difficulty.failureOrUnit)
        .andThen(creationDate.failureOrUnit)
        .andThen(modificationDate.failureOrUnit)
        .andThen(objectives.failureOrUnit)
        .andThen(rewards.failureOrUnit)
        .andThen(tags.failureOrUnit)
        .fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }

  bool get isValid => failureOption.isNone();
}
