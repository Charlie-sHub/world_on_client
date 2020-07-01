import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

import 'get_valid_user.dart';

Tag getValidTag() => Tag.empty().copyWith(name: Name("Test"), creator: getValidUser());
