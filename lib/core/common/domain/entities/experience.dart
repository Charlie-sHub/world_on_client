import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/common/domain/entities/comment.dart';
import 'package:worldon/core/common/domain/entities/location.dart';
import 'package:worldon/core/common/domain/entities/objective.dart';
import 'package:worldon/core/common/domain/entities/reward.dart';
import 'package:worldon/core/common/domain/entities/tag.dart';
import 'package:worldon/core/common/domain/entities/user.dart';

/// [Experience] entity class.
///
/// Experiences are the core of World On, little User created adventures for other Users to enjoy.
class Experience extends Equatable {
  final int id;
  final String name;
  final String description;
  final Set<String> imageNames;
  final double latitude;
  final double longitude;
  final Location location;
  final User creator;
  final int difficulty;
  final DateTime creationDate;
  final DateTime modificationDate;
  final Set<Comment> comments;
  final Set<Objective> objectives;
  final Set<Reward> rewards;
  final Set<Tag> tags;
  final Set<User> likedBy;
  final Set<User> doneBy;

  Experience({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageNames,
    @required this.latitude,
    @required this.longitude,
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
        imageNames,
        latitude,
        longitude,
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
