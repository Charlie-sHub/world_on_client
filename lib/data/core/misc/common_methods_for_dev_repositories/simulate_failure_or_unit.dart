import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';

Future<Either<Failure, Unit>> simulateFailureOrUnit({required bool auxBool}) {
  if (auxBool) {
    return getRightFuture(unit);
  } else {
    // Just to make the UI easier to show
    return getRightFuture(unit);
    // return getLeftServerErrorFuture();
  }
}
