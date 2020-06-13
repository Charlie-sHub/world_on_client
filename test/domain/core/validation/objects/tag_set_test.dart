import 'package:worldon/domain/core/entities/tag.dart';

void main() {
  final Set<Tag> validSet = {
    const Tag(
      id: null,
      name: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
    )
  };
  final Set<Tag> invalidSet = {};
  /*
  Commented so it doesn't try run when testing all tests
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
  test(
    descriptionInvalid,
    () async {
      // Act
      final tags = TagSet(invalidSet);
      // Assert
      expect(tags.isValid(), false);
    },
  );
   */
}
