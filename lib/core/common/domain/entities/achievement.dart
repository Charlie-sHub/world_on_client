import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/common/domain/entities/tag.dart';
import 'package:worldon/core/common/domain/entities/user.dart';

/// [Achievement] entity class.
///
/// Achievements can be earned by Users for doing certain things in the application, getting rewarded for doing so.
class Achievement extends Equatable {
  final int id;
  final String name;
  final String description;
  final String imageName;
  final String type;
  final int requisite; //This will probably be reworked in the future to accommodate different kinds of achievements
  final int experiencePoints;
  final User creator;
  final DateTime creationDate;
  final DateTime modificationDate;
  final Set<Tag> tags;

  Achievement({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageName,
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
        imageName,
        type,
        requisite,
        experiencePoints,
        creator,
        creationDate,
        modificationDate,
        tags,
      ];
}
