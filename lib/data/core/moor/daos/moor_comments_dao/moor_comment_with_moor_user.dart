import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../moor_database.dart';

class MoorCommentWithMoorUser {
  final MoorComment comment;

  // Not gonna bother with options for now
  final MoorUser poster;

  MoorCommentWithMoorUser({
    @required this.comment,
    @required this.poster,
  });
}
