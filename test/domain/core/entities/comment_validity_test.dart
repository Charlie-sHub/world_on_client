import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../test_descriptions.dart';

void main() {
  final validComment = Comment.empty().copyWith(
    poster: getValidUser(),
    content: CommentContent("Test"),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    modificationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
  );
  final invalidPosterComment = validComment.copyWith(poster: User.empty());
  final invalidContentComment = validComment.copyWith(content: CommentContent(""));
  final invalidCreationDateComment = validComment.copyWith(creationDate: PastDate(DateTime.now().add(const Duration(days: 10))));
  final invalidModificationDateComment = validComment.copyWith(modificationDate: PastDate(DateTime.now().add(const Duration(days: 10))));
  test(
    TestDescription.valid,
    () async {
      // Assert
      expect(validComment.isValid, true);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with invalidPosterComment",
        () async {
          // Assert
          expect(invalidPosterComment.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidContentComment",
        () async {
          // Assert
          expect(invalidContentComment.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidCreationDateComment",
        () async {
          // Assert
          expect(invalidCreationDateComment.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidModificationDateComment",
        () async {
          // Assert
          expect(invalidModificationDateComment.isValid, false);
        },
      );
    },
  );
}
