import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

@LazySingleton(as: ExperienceManagementRepositoryInterface, env: [Environment.prod])
class ProductionExperienceManagementRepository implements ExperienceManagementRepositoryInterface {
  final _logger = Logger();
  final FirebaseFirestore _firestore;

  ProductionExperienceManagementRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> createExperience(Experience experience) async {
    try {
      final _experienceDto = ExperienceDto.fromDomain(experience);
      await _firestore.experienceCollection.add(_experienceDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> editExperience(Experience experience) async {
    try {
      final _experienceDto = ExperienceDto.fromDomain(experience);
      await _firestore.experienceCollection.doc(experience.id.getOrCrash()).update(_experienceDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }
  
  @override
  Future<Either<Failure, Experience>> getExperience(UniqueId id) async {
    try {
      final _experienceSnapshot = await _firestore.experienceCollection.doc(id.getOrCrash()).get();
      final _experience = ExperienceDto.fromFirestore(_experienceSnapshot).toDomain();
      return right(_experience);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }
  
  @override
  Future<Either<Failure, Unit>> removeExperience(UniqueId id) async {
    try {
      await _firestore.experienceCollection.doc(id.getOrCrash()).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }
  
  Either<Failure, T> onFirebaseException<T>(FirebaseException e) {
    _logger.e("FirebaseException: ${e.message}");
    return left(
      Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${e.message}"),
      ),
    );
  }
}
