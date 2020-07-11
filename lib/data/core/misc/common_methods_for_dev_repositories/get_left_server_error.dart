import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';

import 'get_server_error_failure.dart';

Future<Either<Failure, T>> getLeftServerErrorFuture<T>() {
  return Future.delayed(
    const Duration(milliseconds: 10),
    () => left(getServerErrorFailure()),
  );
}
