import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

Tag moorTagToDomainTag(MoorTag _moorTag) => Tag(
      id: UniqueId.fromUniqueString(_moorTag.id),
      name: Name(_moorTag.name),
      creatorId: UniqueId.fromUniqueString(_moorTag.creatorId),
      creationDate: PastDate(_moorTag.creationDate),
      modificationDate: PastDate(_moorTag.modificationDate),
    );
