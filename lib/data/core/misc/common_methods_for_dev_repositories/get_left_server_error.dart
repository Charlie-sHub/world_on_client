import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';

Future<Either<Failure, T>> getLeftServerErrorFuture<T>() => Future.delayed(
      const Duration(milliseconds: 10),
      () => left(getServerErrorFailure()),
    );
