import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import '../../../../test_descriptions.dart';

void main() {
  final validSet = KtSet.of(Tag.empty());
  const emptySet = KtSet<Tag>.empty();
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
        "${TestDescription.invalid} with emptySet",
        () async {
          // Act
          final tags = TagSet(emptySet);
          // Assert
          expect(tags.isValid(), false);
        },
      );
      test(
        "${TestDescription.invalid} with tooBigSet",
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
KtSet<Tag> _fillSet() => {
      Tag.empty(),
      Tag.empty(),
      Tag.empty(),
      Tag.empty(),
      Tag.empty(),
      Tag.empty(),
      Tag.empty(),
      Tag.empty(),
      Tag.empty(),
      Tag.empty(),
      Tag.empty(),
    }.toImmutableSet();
