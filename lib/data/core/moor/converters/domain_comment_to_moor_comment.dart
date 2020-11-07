import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';

MoorCommentsCompanion domainCommentToMoorComment(Comment comment) => MoorCommentsCompanion.insert(
      id: comment.id.getOrCrash(),
      content: comment.content.getOrCrash(),
      creationDate: comment.creationDate.getOrCrash(),
      modificationDate: comment.modificationDate.getOrCrash(),
      posterId: comment.poster.id.getOrCrash(),
      experienceId: comment.experienceId.getOrCrash(),
    );
