import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';

Stream<Either<Failure, T>> createStreamOfEither<T>(Either<Failure, T> either) =>
    Stream.fromFuture(
      Future.delayed(
        const Duration(milliseconds: 10),
        () => either,
      ),
    );
