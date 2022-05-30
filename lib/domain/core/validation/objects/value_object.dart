import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  const ValueObject();

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit => value.fold(
        (failure) => left<ValueFailure<dynamic>, Unit>(failure),
        (_) => right<ValueFailure<dynamic>, Unit>(unit),
      );

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  @override
  String toString() => value.fold(
        (failure) => failure.toString(),
        (value) => "$value",
      );

  /// Throws [UnexpectedValueError] containing the [ValueFailure] if it can't get the proper value
  T getOrCrash() => value.fold(
        (valueFailure) => throw UnexpectedValueError(valueFailure),
        id,
      );

  ValueFailure<T> failureOrCrash() => value.fold(
        id,
        (value) => throw Error(),
      );
}
