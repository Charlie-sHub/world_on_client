import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

part 'comment_dto.freezed.dart';
part 'comment_dto.g.dart';

@freezed
abstract class CommentDto implements _$CommentDto {
  const CommentDto._();

  const factory CommentDto({
    @required int id,
    @required UserDto poster,
    @required int experienceId,
    @required String content,
    @required String creationDate,
    @required String modificationDate,
  }) = _CommentDto;

  factory CommentDto.fromDomain(Comment comment) => CommentDto(
    id: comment.id,
        poster: UserDto.fromDomain(comment.poster),
        experienceId: comment.experienceId,
        content: comment.content.getOrCrash(),
        creationDate: comment.creationDate.getOrCrash().toIso8601String(),
        modificationDate: comment.modificationDate.getOrCrash().toIso8601String(),
      );

  Comment toDomain() => Comment(
    id: id,
    poster: poster.toDomain(),
    experienceId: experienceId,
    content: CommentContent(content),
    creationDate: PastDate(DateTime.parse(creationDate)),
    modificationDate: PastDate(DateTime.parse(modificationDate)),
      );

  factory CommentDto.fromJson(Map<String, dynamic> json) => _$CommentDtoFromJson(json);
}
