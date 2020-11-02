import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

part 'tag_dto.freezed.dart';
part 'tag_dto.g.dart';

@freezed
abstract class TagDto implements _$TagDto {
  const TagDto._();

  const factory TagDto({
    @required int id,
    @required String name,
    @required int creatorId,
    @required String creationDate,
    @required String modificationDate,
  }) = _TagDto;

  factory TagDto.fromDomain(Tag tag) => TagDto(
    id: tag.id,
        name: tag.name.getOrCrash(),
        creatorId: tag.creatorId,
        creationDate: tag.creationDate.getOrCrash().toIso8601String(),
        modificationDate: tag.modificationDate.getOrCrash().toIso8601String(),
      );

  Tag toDomain() => Tag(
    id: id,
    name: Name(name),
    creatorId: creatorId,
    creationDate: PastDate(DateTime.parse(creationDate)),
    modificationDate: PastDate(DateTime.parse(modificationDate)),
      );

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);
}
