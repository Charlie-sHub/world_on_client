import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@LazySingleton(as: TagManagementRepositoryInterface, env: [Environment.dev])
class DevelopmentTagManagementRepository implements TagManagementRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> createTag(Tag tag) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editTag(Tag tag) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Tag>> getTag(UniqueId id) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeTag(UniqueId id) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, KtSet<Tag>>> getTags(Set<UniqueId> tagIds) {
    throw UnimplementedError();
  }
}
