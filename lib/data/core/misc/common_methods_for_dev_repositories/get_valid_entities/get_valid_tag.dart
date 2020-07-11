import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import 'get_valid_user.dart';

Tag getValidTag() {
  return Tag(
    id: 1,
    name: Name("Sport"),
    creator: getValidUser(),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 100))),
    modificationDate: PastDate(DateTime.now()),
  );
}
