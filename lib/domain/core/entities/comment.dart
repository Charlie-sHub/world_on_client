import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

/// [Comment] entity class
///
/// Comments are messages left by Users in a Experience.
class Comment extends Equatable {
  final int id;
  final User poster;
  final CommentContent content;
  final PastDate creationDate;
  final PastDate modificationDate;

  const Comment({
    @required this.id,
    @required this.poster,
    @required this.content,
    @required this.creationDate,
    @required this.modificationDate,
  });

  @override
  List<Object> get props => [
        id,
        poster,
        content,
        creationDate,
        modificationDate,
      ];
}
