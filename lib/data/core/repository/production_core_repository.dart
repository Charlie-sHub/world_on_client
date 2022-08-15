import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';

@LazySingleton(as: CoreRepositoryInterface, env: [Environment.prod])
class ProductionCoreRepository implements CoreRepositoryInterface {
  final Logger _logger;
  final FirebaseFirestore _firestore;

  ProductionCoreRepository(
    this._firestore,
    this._logger,
  );

  @override
  Stream<Either<Failure, User>> watchCurrentUser() async* {
    final userDocumentReference = await _firestore.currentUserReference();
    yield* userDocumentReference
        .snapshots()
        .map(
          (document) => right<Failure, User>(
            document.data()!.toDomain(),
          ),
        )
        .onErrorReturnWith(
          (error, _) => left(
            _onError(error),
          ),
        );
  }

  Failure<dynamic> _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown data layer error"),
      );
    }
  }
}
