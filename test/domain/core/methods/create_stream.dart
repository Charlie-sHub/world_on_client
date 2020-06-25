import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';

/// For tests requiring [Stream]s
///
/// Creates a [Stream] from futures with the given [Either]
Stream<Either<Failure, T>> createStream<T>(Either<Failure, T> either) {
  return Stream.fromFuture(
    Future.delayed(
      const Duration(milliseconds: 10),
      () => either,
    ),
  );
}
