import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'comment_dto.freezed.dart';
part 'comment_dto.g.dart';

@freezed
abstract class CommentDto implements _$CommentDto {
  const CommentDto._();

  const factory CommentDto({
    String id,
    @required String posterId,
    @required String experienceId,
    @required String content,
    @required String creationDate,
    @required String modificationDate,
  }) = _CommentDto;

  factory CommentDto.fromDomain(Comment comment) => CommentDto(
        id: comment.id.getOrCrash(),
        posterId: comment.poster.id.getOrCrash(),
        experienceId: comment.experienceId.getOrCrash(),
        content: comment.content.getOrCrash(),
        creationDate: comment.creationDate.getOrCrash().toIso8601String(),
        modificationDate: comment.modificationDate.getOrCrash().toIso8601String(),
      );

  Comment toDomain() => Comment(
        id: UniqueId.fromUniqueString(id),
        poster: User.empty(),
        experienceId: UniqueId.fromUniqueString(experienceId),
        content: CommentContent(content),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
      );

  factory CommentDto.fromJson(Map<String, dynamic> json) => _$CommentDtoFromJson(json);

  factory CommentDto.fromFirestore(DocumentSnapshot document) => CommentDto.fromJson(
        document.data(),
      ).copyWith(
        id: document.id,
      );
}
