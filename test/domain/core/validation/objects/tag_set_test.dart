import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import '../../../../test_descriptions.dart';

void main() {
  final validSet = KtSet.of(Tag.empty());
  final emptySet = KtSet<Tag>.empty();
  final tooBigSet = _fillSet();
  test(
    TestDescription.valid,
    () async {
      // Act
      final tags = TagSet(validSet);
      // Assert
      expect(tags.isValid(), true);
      expect(tags.getOrCrash(), validSet);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "$TestDescription.invalid with emptySet",
        () async {
          // Act
          final tags = TagSet(emptySet);
          // Assert
          expect(tags.isValid(), false);
        },
      );
      test(
        "$TestDescription.invalid with tooBigSet",
        () async {
          // Act
          final tags = TagSet(tooBigSet);
          // Assert
          expect(tags.isValid(), false);
        },
      );
    },
  );
}

// Maybe there's a better way to fill the Set
KtSet<Tag> _fillSet() {
  return {
    Tag.empty().copyWith(id: 1),
    Tag.empty().copyWith(id: 2),
    Tag.empty().copyWith(id: 3),
    Tag.empty().copyWith(id: 4),
    Tag.empty().copyWith(id: 5),
    Tag.empty().copyWith(id: 6),
    Tag.empty().copyWith(id: 7),
    Tag.empty().copyWith(id: 8),
    Tag.empty().copyWith(id: 9),
    Tag.empty().copyWith(id: 10),
    Tag.empty().copyWith(id: 11),
  }.toImmutableSet();
}
