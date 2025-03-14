import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'comment.freezed.dart';

/// [Comment] entity class
///
/// [Comment]s are messages left by [User]s in a [Experience].
@freezed
class Comment with _$Comment {
  const Comment._();

  const factory Comment({
    required UniqueId id,
    required SimpleUser poster,
    required UniqueId experienceId,
    required CommentContent content,
    required PastDate creationDate,
    required PastDate modificationDate,
  }) = _Comment;

  factory Comment.empty() => Comment(
        id: UniqueId(),
        poster: SimpleUser.empty(),
        experienceId: UniqueId(),
        content: CommentContent(""),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return content.failureOrUnit
        .andThen(
          poster.failureOption.fold(
            () => right(unit),
            (failure) => left(failure),
          ),
        )
        .andThen(creationDate.failureOrUnit)
        .andThen(modificationDate.failureOrUnit)
        .fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }

  bool get isValid => failureOption.isNone();
}
