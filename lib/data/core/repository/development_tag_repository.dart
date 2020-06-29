import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/repository/tag_repository_interface.dart';

@LazySingleton(
  as: TagCoreRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentTagRepository implements TagCoreRepositoryInterface {
  @override
  Stream<Either<Failure, List<Tag>>> getAllTags() {
    // TODO: implement getAllTags
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> getCreator(int id) {
    // TODO: implement getCreator
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, List<Tag>>> getTagsByCreator(int id) {
    // TODO: implement getTagsByCreator
    throw UnimplementedError();
  }
}
