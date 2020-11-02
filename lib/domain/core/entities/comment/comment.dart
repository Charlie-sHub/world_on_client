import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
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
    @required int experienceId,
    @required CommentContent content,
    @required PastDate creationDate,
    @required PastDate modificationDate,
  }) = _Comment;

  factory Comment.empty() => Comment(
    poster: User.empty(),
        experienceId: 0,
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
