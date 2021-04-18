import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

import 'item_code.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const Item._();

  const factory Item({
    required UniqueId id,
    required Name name,
    required EntityDescription description,
    required ItemCode code,
    required int value,
    required String imageURL,
    required int timeLimitInDays,
    required DateTime boughtDate,
  }) = _Item;

  factory Item.empty() => Item(
        id: UniqueId(),
        name: Name(""),
        description: EntityDescription(""),
        code: ItemCode.none,
        value: 0,
        imageURL: "",
        timeLimitInDays: 0,
        boughtDate: DateTime.now(),
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit.andThen(description.failureOrUnit).fold(
        (failure) => some(failure),
        (_) => none(),
      );

  bool get isValid => failureOption.isNone();
}
