import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_comment.dart';
import 'package:worldon/data/core/models/comment/comment_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final comment = getValidComment();
      // Act
      final commentDto = CommentDto.fromDomain(comment);
      final result = commentDto.toDomain();
      // Assert
      expect(result, comment);
    },
  );
}
