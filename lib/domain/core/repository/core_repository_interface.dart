import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Miscellaneous repository
abstract class CoreRepositoryInterface {
  ///	Watches the data of the current [User]
  Stream<Either<Failure, User>> watchCurrentUser();
}
