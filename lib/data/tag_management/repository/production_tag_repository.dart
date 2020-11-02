import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';

@LazySingleton(as: TagCoreRepositoryInterface, env: [Environment.prod])
class ProductionTagRepository implements TagCoreRepositoryInterface {
  @override
  Stream<Either<Failure, KtList<Tag>>> watchAllTags() {
    // TODO: implement getAllTags
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> getCreator(int id) {
    // TODO: implement getCreator
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchTagsByCreator(int id) {
    // TODO: implement getTagsByCreator
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addTagToInterests(Tag tag) {
    // TODO: implement addTagToInterests
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> dismissTagFromInterests(Tag tag) {
    // TODO: implement dismissTagFromInterests
    throw UnimplementedError();
  }
}
