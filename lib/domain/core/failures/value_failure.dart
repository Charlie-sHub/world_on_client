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

  const factory ValueFailure.stringExceedsLength({@required String failedValue}) = StringExceedsLength<T>;

  const factory ValueFailure.stringWithInvalidCharacters({@required String failedValue}) = StringWithInvalidCharacters<T>;
}
