import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';


@LazySingleton(as: TagCoreRepositoryInterface, env: [Environment.dev])
class DevelopmentTagRepository implements TagCoreRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> addTagToInterests(Tag tag) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> dismissTagFromInterests(Tag tag) async {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchAllTags() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> getCreator(UniqueId id) {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchTagsByCreator(UniqueId id) {
    throw UnimplementedError();
  }
}
