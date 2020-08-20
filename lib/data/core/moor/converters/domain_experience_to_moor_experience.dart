import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

MoorExperiencesCompanion domainExperienceToMoorExperience(Experience experience) => MoorExperiencesCompanion.insert(
      title: experience.title.getOrCrash(),
      description: experience.description.getOrCrash(),
      latitude: experience.coordinates.latitude.getOrCrash(),
      longitude: experience.coordinates.longitude.getOrCrash(),
      difficulty: experience.difficulty.getOrCrash(),
      creationDate: experience.creationDate.getOrCrash(),
      modificationDate: experience.modificationDate.getOrCrash(),
      creatorId: experience.creator.id,
    );
