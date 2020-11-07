import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';

MoorTagsCompanion domainTagToMoorTag(Tag tag) => MoorTagsCompanion.insert(
      id: tag.id.getOrCrash(),
      creatorId: tag.creatorId.getOrCrash(),
      name: tag.name.getOrCrash(),
      creationDate: tag.creationDate.getOrCrash(),
      modificationDate: tag.modificationDate.getOrCrash(),
    );
