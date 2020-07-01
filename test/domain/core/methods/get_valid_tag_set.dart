import 'package:kt_dart/collection.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import 'get_valid_user.dart';

TagSet getValidTagSet() {
  return TagSet(
    KtSet.of(
      Tag.empty().copyWith(
        name: Name("Test"),
        creator: getValidUser(),
      ),
    ),
  );
}
