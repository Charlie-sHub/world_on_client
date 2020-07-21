import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@LazySingleton(as: TagManagementRepositoryInterface, env: [Environment.prod])
class ProductionTagManagementRepository implements TagManagementRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> createTag(Tag tag) {
    // TODO: implement createTag
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editTag(Tag tag) {
    // TODO: implement editTag
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Tag>> getTag(int id) {
    // TODO: implement getTag
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeTag(int id) {
    // TODO: implement removeTag
    throw UnimplementedError();
  }
}
