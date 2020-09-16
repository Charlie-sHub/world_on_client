import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/moor/converters/domain_tag_to_moor_tag.dart';
import 'package:worldon/data/core/moor/converters/moor_tag_to_domain_tag.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: TagManagementRepositoryInterface, env: [Environment.dev])
class DevelopmentTagManagementRepository implements TagManagementRepositoryInterface {
  final _logger = Logger();
  final _database = getIt<Database>();

  @override
  Future<Either<Failure, Unit>> createTag(Tag tag) async {
    try {
      final _moorTag = domainTagToMoorTag(tag);
      await _database.moorTagsDao.insertTag(_moorTag);
      return right(unit);
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> editTag(Tag tag) async {
    try {
      final _moorTag = domainTagToMoorTag(tag);
      await _database.moorTagsDao.updateTag(_moorTag);
      return right(unit);
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Tag>> getTag(int id) async {
    try {
      final _moorTag = await _database.moorTagsDao.getTagById(id);
      final _tag = moorTagToDomainTag(_moorTag);
      return right(_tag);
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> removeTag(int id) async {
    try {
      final _moorTag = await _database.moorTagsDao.getTagById(id);
      await _database.moorTagsDao.removeTag(_moorTag);
      return right(unit);
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }
}
