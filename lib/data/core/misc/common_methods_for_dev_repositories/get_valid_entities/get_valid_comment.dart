import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

Comment getValidComment() {
  return Comment(
    id: 1,
    poster: getValidUser(),
    experienceId: 1,
    content: CommentContent("Mauris a ornare nisl. Nunc tincidunt consequat massa a fermentum. Praesent eu mi aliquet, tincidunt magna sit amet, venenatis est."),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 100))),
    modificationDate: PastDate(DateTime.now()),
  );
}
