import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.nullInput() = NullInput<T>;

  const factory ValueFailure.invalidDate({@required DateTime failedValue}) = InvalidDate<T>;

  const factory ValueFailure.invalidEmail({@required String failedValue}) = InvalidEmail<T>;

  const factory ValueFailure.invalidPassword({@required String failedValue}) = InvalidPassword<T>;

  const factory ValueFailure.invalidName({@required String failedValue}) = InvalidName<T>;

  const factory ValueFailure.emptyString({@required String failedValue}) = EmptyString<T>;

  const factory ValueFailure.multiLineString({@required String failedValue}) = MultiLineString<T>;

  const factory ValueFailure.stringExceedsLength({
    @required String failedValue,
    @required int maxLength,
  }) = StringExceedsLength<T>;

  const factory ValueFailure.integerOutOfBounds({@required int failedValue}) = IntegerOutOfBounds<T>;

  const factory ValueFailure.stringWithInvalidCharacters({@required String failedValue}) = StringWithInvalidCharacters<T>;

  const factory ValueFailure.invalidCoordinate({@required double failedValue}) = InvalidCoordinates<T>;

  const factory ValueFailure.emptySet({@required T failedValue}) = EmptySet<T>;

  const factory ValueFailure.setExceedsLength({
    @required T failedValue,
    @required int maxLength,
  }) = SetExceedsLength<T>;
}
