import 'package:worldon/data/core/moor/converters/moor_user_to_domain_user.dart';
import 'package:worldon/data/core/moor/daos/moor_tags_dao/moor_tag_with_moor_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

Tag moorTagToDomainTag(MoorTagWithMoorUser _moorTagWithCreator) => Tag(
      id: _moorTagWithCreator.tag.id,
      name: Name(_moorTagWithCreator.tag.name),
      creator: moorUserToDomainUser(_moorTagWithCreator.creator),
      creationDate: PastDate(_moorTagWithCreator.tag.creationDate),
      modificationDate: PastDate(_moorTagWithCreator.tag.modificationDate),
    );
