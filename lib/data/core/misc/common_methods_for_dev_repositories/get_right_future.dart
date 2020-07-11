import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';

Future<Either<Failure, T>> getRightFuture<T>(T value) {
  return Future.delayed(
    const Duration(milliseconds: 10),
    () => right(value),
  );
}
