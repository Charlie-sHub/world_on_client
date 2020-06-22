import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import '../../../../constant_descriptions.dart';

void main() {
  final Set<Tag> validSet = {
    const Tag(
      id: null,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
  };
  final Set<Tag> emptySet = {};
  final Set<Tag> tooBigSet = _fillSet();
  test(
    descriptionValid,
    () async {
      // Act
      final tags = TagSet(validSet);
      // Assert
      expect(tags.isValid(), true);
      expect(tags.getOrCrash(), validSet);
    },
  );
  group(
    descriptionGroupOnFailure,
      () {
      test(
        "$descriptionInvalid with emptySet",
          () async {
          // Act
          final tags = TagSet(emptySet);
          // Assert
          expect(tags.isValid(), false);
        },
      );
      test(
        "$descriptionInvalid with tooBigSet",
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
Set<Tag> _fillSet() {
  return {
    const Tag(
      id: 1,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 2,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 3,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 4,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 5,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: null,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 6,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 7,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 8,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 9,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 10,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
    const Tag(
      id: 11,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    ),
  };
}
