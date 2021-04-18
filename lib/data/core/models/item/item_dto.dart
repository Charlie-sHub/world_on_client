import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/data/core/misc/server_timestamp_converter.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/entities/item/item_code.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'item_dto.freezed.dart';
part 'item_dto.g.dart';

@freezed
class ItemDto with _$ItemDto {
  const ItemDto._();

  const factory ItemDto({
    required String id,
    required String name,
    required String description,
    required ItemCode code,
    required int value,
    required int timeLimitInDays,
    required String imageURL,
    @ServerTimestampConverter() required DateTime boughtDate,
  }) = _Item;

  factory ItemDto.fromDomain(Item item) => ItemDto(
        id: item.id.getOrCrash(),
        name: item.name.getOrCrash(),
        description: item.description.getOrCrash(),
        code: item.code,
        value: item.value,
        imageURL: item.imageURL,
        timeLimitInDays: item.timeLimitInDays,
        boughtDate: item.boughtDate,
      );

  Item toDomain() => Item(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        description: EntityDescription(description),
        code: code,
        value: value,
        imageURL: imageURL,
        timeLimitInDays: timeLimitInDays,
        boughtDate: boughtDate,
      );

  factory ItemDto.fromJson(Map<String, dynamic> json) => _$ItemDtoFromJson(json);

  factory ItemDto.fromFirestore(DocumentSnapshot document) => ItemDto.fromJson(
        document.data()!,
      ).copyWith(
        id: document.id,
      );
}
