import 'package:worldon/data/core/moor/converters/moor_user_to_domain_user.dart';
import 'package:worldon/data/core/moor/daos/moor_comments_dao/moor_comment_with_moor_user.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

Comment moorCommentToDomainComment(MoorCommentWithMoorUser _moorCommentWithMoorUser) => Comment(
      id: UniqueId.fromUniqueString(_moorCommentWithMoorUser.comment.id),
      poster: moorUserToDomainUser(_moorCommentWithMoorUser.poster),
      experienceId: UniqueId.fromUniqueString(_moorCommentWithMoorUser.comment.experienceId),
      content: CommentContent(_moorCommentWithMoorUser.comment.content),
      creationDate: PastDate(_moorCommentWithMoorUser.comment.creationDate),
      modificationDate: PastDate(_moorCommentWithMoorUser.comment.modificationDate),
    );
