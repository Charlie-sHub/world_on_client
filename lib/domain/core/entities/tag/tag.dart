import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

part 'tag.freezed.dart';

/// [Tag] entity class.
///
/// [Tag]s work as a way to classify the different [Experience]s in the application and for [User]s to set their interests.
@freezed
abstract class Tag implements _$Tag {
  const Tag._();

  const factory Tag({
    int id,
    @required Name name,
    @required User creator,
    @required PastDate creationDate,
    @required PastDate modificationDate,
  }) = _Tag;
  
  factory Tag.empty() => Tag(
    name: Name(""),
    creator: User.empty(),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
  );
  
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.andThen(creator.failureOrUnit).andThen(creationDate.failureOrUnit).andThen(modificationDate.failureOrUnit).fold(
        (failure) => some(failure),
        (_) => none(),
    );
  }
  
  bool get isValid => failureOption.isNone();
}
