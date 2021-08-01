import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';

/// Repository for the share feature
abstract class ShareRepositoryInterface {
  /// Sends a given [SearchTerm] to the server and it returns the [User]s with said [SearchTerm] in their names
  /// That the current [User] can share to
  @Deprecated("Using this method creates many unnecessary reads")
  Future<Either<Failure, KtList<User>>> searchShareableUsers(SearchTerm name);

  /// Gets all the [User]s that the current  [User] can share to
  Future<Either<Failure, KtList<User>>> getShareableUsers();
}
