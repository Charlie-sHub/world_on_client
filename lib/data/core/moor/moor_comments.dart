part of 'moor_database.dart';

class MoorComments extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get content => text().withLength(min: 1, max: CommentContent.maxLength)();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();
}

class MoorCommentWithRelations {
  final MoorComment comment;
  final MoorUser poster;

  MoorCommentWithRelations(
    this.poster,
    this.comment,
  );
}
