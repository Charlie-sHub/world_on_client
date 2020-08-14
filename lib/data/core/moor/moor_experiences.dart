part of 'moor_database.dart';

class MoorExperiences extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().withLength(min: 1, max: Name.maxLength)();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  // TODO: Implement Set<String> imageURLs

  RealColumn get latitude => real()();

  RealColumn get longitude => real()();

  IntColumn get difficulty => integer()();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();
}

class MoorExperienceWithRelations {
  final MoorExperience experience;
  final MoorLocation location;
  final MoorUser creator;
  final Set<MoorObjective> objectives;
  final Set<MoorReward> rewards;
  final Set<MoorTag> tags;
  final Set<MoorComment> comments;
  final Set<MoorUser> likedBy;
  final Set<MoorUser> doneBy;

  MoorExperienceWithRelations(
    this.experience,
    this.location,
    this.creator,
    this.objectives,
    this.rewards,
    this.tags,
    this.comments,
    this.likedBy,
    this.doneBy,
  );
}
