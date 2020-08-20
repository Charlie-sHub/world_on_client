import 'package:moor/moor.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import 'moor_comment_with_moor_user.dart';

part 'moor_comments_dao.g.dart';

@UseDao(
  tables: [
    MoorComments,
    MoorUsers,
  ],
)
class MoorCommentsDao extends DatabaseAccessor<Database> with _$MoorCommentsDaoMixin {
  MoorCommentsDao(Database db) : super(db);

  Future insertComment(Insertable<MoorComment> comment) => into(moorComments).insert(comment);

  Stream<List<MoorCommentWithMoorUser>> watchExperienceComments(int experienceId) {
    final _commentQuery = select(moorComments);
    return _commentQuery.watch().switchMap(
      (comments) {
        final _contentQuery = select(moorUsers).join(
          [
            innerJoin(
              moorComments,
              moorComments.posterId.equalsExp(moorUsers.id),
            ),
          ],
        )..where(moorComments.experienceId.equals(experienceId));
        return _contentQuery.watch().map(
              (rows) => rows
                  .map(
                    (row) => MoorCommentWithMoorUser(
                      comment: row.readTable(moorComments),
                      poster: row.readTable(moorUsers),
                    ),
                  )
                  .toList(),
            );
      },
    );
  }
}
