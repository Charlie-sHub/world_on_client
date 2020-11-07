import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';

class MoorComments extends Table {
  TextColumn get id => text()();

  TextColumn get content => text().withLength(min: 1, max: CommentContent.maxLength)();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();

  TextColumn get posterId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get experienceId => text().customConstraint("REFERENCES moor_experiences(id)")();
}
