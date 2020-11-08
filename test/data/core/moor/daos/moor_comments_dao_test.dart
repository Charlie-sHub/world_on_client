import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_comment.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/converters/domain_comment_to_moor_comment.dart';
import 'package:worldon/data/core/moor/converters/domain_experience_to_moor_experience.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/converters/moor_comment_to_domain_comment.dart';
import 'package:worldon/data/core/moor/daos/moor_comments_dao/moor_comment_with_moor_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

void main() {
  Database _database;
  setUp(
    () {
      _database = Database.test(VmDatabase.memory());
    },
  );
  tearDown(
    () async {
      await _database.close();
    },
  );
  final _comment = getValidComment();
  test(
    "Should insert a comment",
    () async {
      // Arrange
      final _userId = await _insertPoster(_database);
      final _experienceId = await _insertExperience(_database);
      final _moorComment = domainCommentToMoorComment(
        _comment.copyWith(
          experienceId: UniqueId.fromUniqueString(_experienceId),
        ),
      ).copyWith(
        posterId: Value(_userId),
      );
      // Act
      await _database.moorCommentsDao.insertComment(_moorComment);
      final _commentFromDb = await _database.moorCommentsDao.getCommentById(_moorComment.id.value);
      // Assert
      expect(_commentFromDb.toCompanion(true), _moorComment);
    },
  );
  test(
    "Should return the amount of comments",
    () async {
      // Arrange
      final _userId = await _insertPoster(_database);
      final _experienceId = await _insertExperience(_database);
      final _moorCommentCompanion = domainCommentToMoorComment(
        _comment.copyWith(
          experienceId: UniqueId.fromUniqueString(_experienceId),
        ),
      ).copyWith(
        posterId: Value(_userId),
      );
      final _moorCommentList = [
        _moorCommentCompanion,
        _moorCommentCompanion.copyWith(content: const Value("Test")),
      ];
      // Act
      for (final _moorComment in _moorCommentList) {
        await _database.moorCommentsDao.insertComment(_moorComment);
      }
      final _commentAmount = await _database.moorCommentsDao.countComments();
      // Assert
      expect(_commentAmount, _moorCommentList.length);
    },
  );
  test(
    "Should delete all comments",
    () async {
      // Arrange
      final _userId = await _insertPoster(_database);
      final _experienceId = await _insertExperience(_database);
      final _moorCommentCompanion = domainCommentToMoorComment(
        _comment.copyWith(
          experienceId: UniqueId.fromUniqueString(_experienceId),
        ),
      ).copyWith(
        posterId: Value(_userId),
      );
      final _moorCommentList = [
        _moorCommentCompanion,
        _moorCommentCompanion.copyWith(content: const Value("Test")),
      ];
      // Act
      for (final _moorComment in _moorCommentList) {
        await _database.moorCommentsDao.insertComment(_moorComment);
      }
      final _deletedCommentsAmount = await _database.moorCommentsDao.deleteAllComments();
      // Assert
      expect(_deletedCommentsAmount, _moorCommentList.length);
    },
  );
  test(
    "Should emit a list of comments of a given experience",
    () async {
      // Arrange
      final _userId = await _insertPoster(_database);
      final _experienceId = await _insertExperience(_database);
      final _moorCommentCompanion = domainCommentToMoorComment(_comment).copyWith(posterId: Value(_userId));
      final _moorCommentList = [
        _moorCommentCompanion,
        _moorCommentCompanion.copyWith(content: const Value("Test")),
      ];
      final _commentList = <Comment>[];
      // Act
      for (final _moorComment in _moorCommentList) {
        await _database.moorCommentsDao.insertComment(_moorComment);
        final _moorCommentFromDb = await _database.moorCommentsDao.getCommentById(_moorComment.id.value);
        final _moorUser = await _database.moorUsersDao.getUserById(_moorComment.posterId.value);
        final _commentWithPoster = MoorCommentWithMoorUser(
          comment: _moorCommentFromDb,
          poster: _moorUser,
        );
        _commentList.add(moorCommentToDomainComment(_commentWithPoster));
      }
      // Assert
      expectLater(
          _database.moorCommentsDao.watchExperienceComments(_experienceId).map(
                (_commentWithPosterList) => _commentWithPosterList
                    .map(
                      (_commentWithPoster) => moorCommentToDomainComment(_commentWithPoster),
                    )
                    .toList(),
              ),
          emitsInOrder([_commentList]));
    },
  );
}

Future<String> _insertExperience(Database _database) async {
  final _experience = getValidExperience();
  final _moorExperience = domainExperienceToMoorExperience(_experience);
  await _database.moorExperiencesDao.insertExperience(_moorExperience);
  return _moorExperience.id.value;
}

Future<String> _insertPoster(Database _database) async {
  final _user = getValidUser();
  final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
    isLoggedIn: const Value(false),
  );
  await _database.moorUsersDao.insertUser(_moorUserRicky);
  return _moorUserRicky.id.value;
}
