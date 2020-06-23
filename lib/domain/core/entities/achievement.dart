import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

/// [Achievement] entity class.
///
/// Achievements can be earned by Users for doing certain things in the application, getting rewarded for doing so.
class Achievement extends Equatable {
  // TODO: rework the entities using freezed
  // Freezed will allow JSON conversion to be easy to make but then the JSON conversion logic would be in the domain layer instead of the data layer
  // also, is there a way with Freezed to tell it to "ignore" certain fields when it comes to value equality?
  final int id;
  final Name name;
  final EntityDescription description;
  final String imageURL; // TODO: Make a value object and validator for image URLs from World On's back-end
  final String type;
  final int requisite; // This will probably be reworked in the future to accommodate different kinds of achievements
  final ExperiencePoints experiencePoints;
  final User creator;
  final PastDate creationDate;
  final PastDate modificationDate;
  final TagSet tags;

  const Achievement({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageURL,
    @required this.type,
    @required this.requisite,
    @required this.experiencePoints,
    @required this.creator,
    @required this.creationDate,
    @required this.modificationDate,
    @required this.tags,
  });

  @override
  List<Object> get props => [
        id,
        name,
        description,
        imageURL,
        type,
        requisite,
        experiencePoints,
        creator,
        creationDate,
        modificationDate,
        tags,
      ];
}
