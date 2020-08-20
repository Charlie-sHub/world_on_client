import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../moor_database.dart';

class MoorTagWithMoorUser {
  final MoorTag tag;
  final MoorUser creator;

  MoorTagWithMoorUser({
    @required this.tag,
    @required this.creator,
  });
}
