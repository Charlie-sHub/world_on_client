import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'tag_dto.freezed.dart';
part 'tag_dto.g.dart';

@freezed
abstract class TagDto implements _$TagDto {
  const TagDto._();

  const factory TagDto({
    String id,
    @required String name,
    @required String creatorId,
    @required String creationDate,
    @required String modificationDate,
  }) = _TagDto;

  factory TagDto.fromDomain(Tag tag) => TagDto(
        id: tag.id.getOrCrash(),
        name: tag.name.getOrCrash(),
        creatorId: tag.creatorId.getOrCrash(),
        creationDate: tag.creationDate.getOrCrash().toIso8601String(),
        modificationDate: tag.modificationDate.getOrCrash().toIso8601String(),
      );

  Tag toDomain() => Tag(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        creatorId: UniqueId.fromUniqueString(creatorId),
        // TODO: Solve the issue with the dates
        // How to send them and retrieve them?
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
      );

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);

  factory TagDto.fromFirestore(DocumentSnapshot document) => TagDto.fromJson(
        document.data(),
      ).copyWith(
        id: document.id,
      );
}
