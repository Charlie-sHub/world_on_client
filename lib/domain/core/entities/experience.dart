import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/coordinates.dart';
import 'package:worldon/domain/core/entities/location.dart';
import 'package:worldon/domain/core/entities/objective.dart';
import 'package:worldon/domain/core/entities/reward.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

/// [Experience] entity class.
///
/// Experiences are the core of World On, little User created adventures for other Users to enjoy.
class Experience extends Equatable {
  final int id;
  final Name name;
  final EntityDescription description;
  final Set<String> imageURLs;
  final Coordinates coordinates;
  final Location location;
  final User creator;
  final Difficulty difficulty;
  final PastDate creationDate;
  final PastDate modificationDate;
  final Set<Comment> comments;
  final Set<Objective> objectives; // TODO: Value object and validator to ensure the Objective and Tag Sets are not empty
  final Set<Reward> rewards;
  final Set<Tag> tags;
  final Set<User> likedBy;
  final Set<User> doneBy;

  const Experience({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageURLs,
    @required this.coordinates,
    @required this.location,
    @required this.creator,
    @required this.difficulty,
    @required this.creationDate,
    @required this.modificationDate,
    @required this.comments,
    @required this.objectives,
    @required this.rewards,
    @required this.tags,
    @required this.likedBy,
    @required this.doneBy,
  });

  @override
  List<Object> get props => [
        id,
        name,
        description,
        imageURLs,
        coordinates,
        location,
        creator,
        difficulty,
        creationDate,
        modificationDate,
        comments,
        objectives,
        rewards,
        tags,
        likedBy,
        doneBy,
      ];
}
