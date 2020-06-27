import 'package:kt_dart/collection.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import 'get_valid_user.dart';

TagSet getValidTagSet() {
  return TagSet(
    KtSet.of(
      Tag(
        name: Name("Test"),
        creator: getValidUser(),
        creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
        modificationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
      ),
    ),
  );
}
