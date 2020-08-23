import 'package:worldon/data/core/moor/converters/moor_user_to_domain_user.dart';
import 'package:worldon/data/core/moor/daos/moor_comments_dao/moor_comment_with_moor_user.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

Comment moorCommentToDomainComment(MoorCommentWithMoorUser moorCommentWithMoorUser) => Comment(
  id: moorCommentWithMoorUser.comment.id,
      poster: moorUserToDomainUser(moorCommentWithMoorUser.poster),
      content: CommentContent(moorCommentWithMoorUser.comment.content),
      creationDate: PastDate(moorCommentWithMoorUser.comment.creationDate),
      modificationDate: PastDate(moorCommentWithMoorUser.comment.modificationDate),
    );
