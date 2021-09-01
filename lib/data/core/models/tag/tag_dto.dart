import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/misc/server_timestamp_converter.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'tag_dto.freezed.dart';
part 'tag_dto.g.dart';

@freezed
class TagDto with _$TagDto {
  const TagDto._();

  const factory TagDto({
    required String id,
    required String name,
    required String creatorId,
    @ServerTimestampConverter() required DateTime creationDate,
    @ServerTimestampConverter() required DateTime modificationDate,
  }) = _TagDto;

  factory TagDto.fromDomain(Tag tag) => TagDto(
        id: tag.id.getOrCrash(),
        name: tag.name.getOrCrash(),
        creatorId: tag.creatorId.getOrCrash(),
        creationDate: tag.creationDate.getOrCrash(),
        modificationDate: tag.modificationDate.getOrCrash(),
      );

  Tag toDomain() => Tag(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        creatorId: UniqueId.fromUniqueString(creatorId),
        creationDate: PastDate(creationDate),
        modificationDate: PastDate(modificationDate),
      );

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);
}
