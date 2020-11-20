import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/cloud_storage_service.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: ExperienceManagementRepositoryInterface, env: [Environment.prod])
class ProductionExperienceManagementRepository implements ExperienceManagementRepositoryInterface {
  final _logger = Logger();
  final FirebaseFirestore _firestore;

  ProductionExperienceManagementRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> createExperience(Experience experience) async {
    try {
      final _cloudStorageService = getIt<CloudStorageService>();
      final _rewardSet = <Reward>{};
      final _objectiveSet = <Objective>{};
      for (final _imageAsset in experience.imageAssetsOption.getOrElse(() => null)) {
        final _imageName = _imageAsset.name + experience.id.getOrCrash();
        final _imageURL = await _cloudStorageService.uploadAssetImage(
          imageToUpload: _imageAsset,
          folder: "experiences",
          name: _imageName,
        );
        experience.imageURLs.add(_imageURL);
      }
      for (final _reward in experience.rewards.getOrCrash().asSet()) {
        final _imageURL = await _cloudStorageService.uploadFileImage(
          imageToUpload: _reward.imageFile.getOrElse(() => null),
          folder: "experiences",
          name: _reward.id.getOrCrash(),
        );
        final _rewardWithImage = _reward.copyWith(imageURL: _imageURL);
        _rewardSet.add(_rewardWithImage);
      }
      for (final _objective in experience.objectives.getOrCrash().asSet()) {
        final _imageURL = await _cloudStorageService.uploadFileImage(
          imageToUpload: _objective.imageFile.getOrElse(() => null),
          folder: "experiences",
          name: _objective.id.getOrCrash(),
        );
        final _objectiveWithImage = _objective.copyWith(imageURL: _imageURL);
        _objectiveSet.add(_objectiveWithImage);
      }
      final _experienceDto = ExperienceDto.fromDomain(
        experience.copyWith(
          rewards: RewardSet(_rewardSet.toImmutableSet()),
          objectives: ObjectiveSet(_objectiveSet.toImmutableSet()),
        ),
      );
      await _firestore.experienceCollection.doc(experience.id.getOrCrash()).set(_experienceDto.toJson());
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
