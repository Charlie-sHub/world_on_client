import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/share/repository/share_repository_interface.dart';

@LazySingleton(as: ShareRepositoryInterface, env: [Environment.dev])
class DevelopmentShareRepository implements ShareRepositoryInterface {
  @override
  Future<Either<Failure, KtList<User>>> getShareableUsers() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, KtList<User>>> searchShareableUsers(SearchTerm name) {
    throw UnimplementedError();
  }
}
