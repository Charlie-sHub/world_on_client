import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constant_descriptions.dart';
import '../methods/get_valid_user.dart';

void main() {
  final validComment = Comment.empty().copyWith(
    poster: getValidUser(),
    content: CommentContent("Test"),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    modificationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
  );
  final invalidPosterComment = validComment.copyWith(poster: User.empty());
  final invalidContentComment = validComment.copyWith(content: CommentContent(""));
  final invalidCreationDateComment = validComment.copyWith(creationDate: PastDate(DateTime.now()));
  final invalidModificationDateComment = validComment.copyWith(modificationDate: PastDate(DateTime.now()));
  test(
    descriptionValid,
    () async {
      // Assert
      expect(validComment.isValid, true);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with invalidPosterComment",
        () async {
          // Assert
          expect(invalidPosterComment.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidContentComment",
        () async {
          // Assert
          expect(invalidContentComment.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidCreationDateComment",
        () async {
          // Assert
          expect(invalidCreationDateComment.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidModificationDateComment",
        () async {
          // Assert
          expect(invalidModificationDateComment.isValid, false);
        },
      );
    },
  );
}
