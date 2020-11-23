import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/misc/server_timestamp_converter.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'comment_dto.freezed.dart';d.dart';

part 'comment_dto.g.dart';

@freezed
abstract class CommentDto implements _$CommentDto {
  const CommentDto._();

  const factory CommentDto({
    @required String id,
    @required UserDto poster,
    @required String experienceId,
    @required String content,
    @ServerTimestampConverter() @required DateTime creationDate,
    @ServerTimestampConverter() @required DateTime modificationDate,
  }) = _CommentDto;

  factory CommentDto.fromDomain(Comment comment) => CommentDto(
    id: comment.id.getOrCrash(),
        poster: UserDto.fromDomain(comment.poster),
        experienceId: comment.experienceId.getOrCrash(),
        content: comment.content.getOrCrash(),
        creationDate: comment.creationDate.getOrCrash(),
        modificationDate: comment.modificationDate.getOrCrash(),
      );

  Comment toDomain() => Comment(
    id: UniqueId.fromUniqueString(id),
    poster: poster.toDomain(),
    experienceId: UniqueId.fromUniqueString(experienceId),
    content: CommentContent(content),
    creationDate: PastDate(creationDate),
    modificationDate: PastDate(modificationDate),
      );

  factory CommentDto.fromJson(Map<String, dynamic> json) => _$CommentDtoFromJson(json);

  factory CommentDto.fromFirestore(DocumentSnapshot document) => CommentDto.fromJson(
        document.data(),
      ).copyWith(
        id: document.id,
      );
}
