import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/user/user_fields.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/share/repository/share_repository_interface.dart';

@LazySingleton(as: ShareRepositoryInterface, env: [Environment.prod])
class ProductionShareRepository implements ShareRepositoryInterface {
  final Logger _logger;
  final FirebaseFirestore _firestore;

  ProductionShareRepository(
    this._firestore,
    this._logger,
  );

  @override
  Future<Either<Failure, KtList<User>>> getShareableUsers() async {
    try {
      final userDocumentReference = await _firestore.currentUserReference();
      final querySnapshot = await _firestore.userCollection
          .where(
            UserFields.followedUsersIds,
            arrayContains: userDocumentReference.id,
          )
          .limit(100)
          .get();
      final userList = querySnapshot.docs.map(
        (queryDocumentSnapshot) => queryDocumentSnapshot.data().toDomain(),
      );
      if (userList.isNotEmpty) {
        return right(userList.toImmutableList());
      } else {
        return left<Failure, KtList<User>>(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        );
      }
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, KtList<User>>> searchShareableUsers(
    SearchTerm term,
  ) async {
    try {
      final searchString = term.getOrCrash().toLowerCase();
      final userDocumentReference = await _firestore.currentUserReference();
      final querySnapshot = await _firestore.userCollection
          .where(
            UserFields.followedUsersIds,
            arrayContains: userDocumentReference.id,
          )
          .get();
      final userDtoList = querySnapshot.docs.map(
        (queryDocumentSnapshot) => queryDocumentSnapshot.data(),
      );
      final filteredList = userDtoList.where(
        (userDto) =>
            userDto.name.toLowerCase().contains(
                  searchString,
                ) ||
            userDto.username.toLowerCase().contains(
                  searchString,
                ),
      );
      final userList = filteredList
          .map(
            (userDto) => userDto.toDomain(),
          )
          .toList();
      if (userList.isNotEmpty) {
        return right(userList.toImmutableList());
      } else {
        return left<Failure, KtList<User>>(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        );
      }
    } catch (error) {
      return left(_onError(error));
    }
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(
          errorString: "Firebase error: ${error.message}",
        ),
      );
    } else if (error is AlgoliaError) {
      _logger.e("Algolia error: ${error.error}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Algolia error"),
      );
    } else if (error is AssertionError) {
      _logger.e("Failed assertion error");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Failed assertion error"),
      );
    } else {
      _logger.e("Unknown server error, type: ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown data layer error"),
      );
    }
  }
}
