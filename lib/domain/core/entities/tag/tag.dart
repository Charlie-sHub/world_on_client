import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'tag.freezed.dart';

/// [Tag] entity class.
///
/// [Tag]s work as a way to classify the different [Experience]s in the application and for [User]s to set their interests.
///
/// Maybe [Tag]s should be simplified to just the name
@freezed
class Tag with _$Tag {
  const Tag._();

  const factory Tag({
    required UniqueId id,
    required Name name,
    required UniqueId creatorId,
    required PastDate creationDate,
    required PastDate modificationDate,
  }) = _Tag;

  factory Tag.empty() => Tag(
        id: UniqueId(),
        name: Name(""),
        creatorId: UniqueId(),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit
      .andThen(creationDate.failureOrUnit)
      .andThen(modificationDate.failureOrUnit)
      .fold(
        some,
        (_) => none(),
      );

  bool get isValid => failureOption.isNone();
}
