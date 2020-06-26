import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

part 'comment.freezed.dart';

/// [Comment] entity class
///
/// [Comment]s are messages left by [User]s in a [Experience].
@freezed
abstract class Comment implements _$Comment {
  const Comment._();

  const factory Comment({
    int id,
    @required User poster,
    @required CommentContent content,
    @required PastDate creationDate,
    @required PastDate modificationDate,
  }) = _Comment;

  factory Comment.empty() => Comment(
        poster: User.empty(),
        content: CommentContent(""),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
      );
}
