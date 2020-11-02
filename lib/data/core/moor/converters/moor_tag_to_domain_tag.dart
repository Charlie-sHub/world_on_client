import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

Tag moorTagToDomainTag(MoorTag moorTag) => Tag(
      id: moorTag.id,
      name: Name(moorTag.name),
      creatorId: moorTag.creatorId,
      creationDate: PastDate(moorTag.creationDate),
      modificationDate: PastDate(moorTag.modificationDate),
    );
