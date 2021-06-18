import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/cloud_storage/cloud_storage_service.dart';
import 'package:worldon/data/core/misc/firebase/cloud_storage/storage_folder_enum.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/experience/experience_fields.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: ExperienceManagementRepositoryInterface, env: [Environment.prod])
class ProductionExperienceManagementRepository implements ExperienceManagementRepositoryInterface {
  final _logger = Logger();
  final _geo = Geoflutterfire();
  final _functions = FirebaseFunctions.instanceFor(region: "europe-west1");
  final FirebaseFirestore _firestore;

  ProductionExperienceManagementRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> createExperience(Experience experience) async {
    try {
      final _rewardSet = <Reward>{};
      final _objectiveList = <Objective>[];
      await _uploadImages(
        experience,
        _rewardSet,
        _objectiveList,
      );
      final _experienceDto = ExperienceDto.fromDomain(
        experience.copyWith(
          rewards: RewardSet(_rewardSet.toImmutableSet()),
          objectives: ObjectiveList(_objectiveList.toImmutableList()),
        ),
      );
      final _flutterFireGeoPosition = _geo.point(
        latitude: _experienceDto.coordinates.latitude,
        longitude: _experienceDto.coordinates.longitude,
      );
      final _experienceJson = _experienceDto.toJson();
      _experienceJson[ExperienceFields.position] = _flutterFireGeoPosition.data;
      _firestore.experienceCollection
          .doc(
            experience.id.getOrCrash(),
          )
          .set(
            _experienceJson,
          );
      return right(unit);
    } catch (e) {
      return _onException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> editExperience(Experience experience) async {
    try {
      final _rewardSet = <Reward>{};
      final _objectiveList = <Objective>[];
      final _experienceId = experience.id.getOrCrash();
      await _uploadImages(
        experience,
        _rewardSet,
        _objectiveList,
      );
      // Adding the original rewards and objectives
      _rewardSet.addAll(experience.rewards.getOrCrash().dart);
      _objectiveList.addAll(experience.objectives.getOrCrash().dart);
      final _experienceDto = ExperienceDto.fromDomain(
        experience.copyWith(
          rewards: RewardSet(_rewardSet.toImmutableSet()),
          objectives: ObjectiveList(_objectiveList.toImmutableList()),
        ),
      );
      final _flutterFireGeoPosition = _geo.point(
        latitude: _experienceDto.coordinates.latitude,
        longitude: _experienceDto.coordinates.longitude,
      );
      final _experienceJson = _experienceDto.toJson();
      _experienceJson[ExperienceFields.position] = _flutterFireGeoPosition.data;
      _firestore.experienceCollection
          .doc(
            _experienceId,
          )
          .update(
            _experienceJson,
          );
      final _propagateUpdateCallable = _functions.httpsCallable("propagateExperienceUpdate");
      _propagateUpdateCallable.call(
        <String, dynamic>{"experienceId": _experienceId},
      );
      final _updateIndexCallable = _functions.httpsCallable("updateExperienceIndex");
      await _updateIndexCallable.call(
        <String, dynamic>{"experienceId": _experienceId},
      );
      return right(unit);
    } catch (e) {
      return _onException(e);
    }
  }

  @override
  Future<Either<Failure, Experience>> getExperience(UniqueId id) async {
    try {
      final _experienceSnapshot = await _firestore.experienceCollection
          .doc(
            id.getOrCrash(),
          )
          .get();
      final _experience = ExperienceDto.fromFirestore(
        _experienceSnapshot,
      ).toDomain();
      return right(_experience);
    } catch (e) {
      return _onException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> removeExperience(UniqueId id) async {
    try {
      _firestore.experienceCollection
          .doc(
            id.getOrCrash(),
          )
          .delete();
      return right(unit);
    } catch (e) {
      return _onException(e);
    }
  }

  Future _uploadImages(
    Experience experience,
    Set<Reward> rewardSet,
    List<Objective> objectiveList,
  ) async {
    final _cloudStorageService = getIt<CloudStorageService>();
    final _imageAssets = experience.imageAssetsOption.getOrElse(() => []);
    for (final _imageAsset in _imageAssets) {
      final _imageName = _imageAsset.name! + experience.id.getOrCrash();
      final _imageURL = await _cloudStorageService.uploadAssetImage(
        imageToUpload: _imageAsset,
        folder: StorageFolder.experiences,
        name: _imageName,
      );
      experience.imageURLs.add(_imageURL);
    }
    for (final _reward in experience.rewards.getOrCrash().dart) {
      await _reward.imageFile.fold(
        () {},
        (_imageFile) async {
          final _imageURL = await _cloudStorageService.uploadFileImage(
            imageToUpload: _imageFile,
            folder: StorageFolder.experiences,
            name: _reward.id.getOrCrash(),
          );
          final _rewardWithImage = _reward.copyWith(imageURL: _imageURL);
          rewardSet.add(_rewardWithImage);
        },
      );
    }
    for (final _objective in experience.objectives.getOrCrash().dart) {
      await _objective.imageFile.fold(
        () {},
        (_imageFile) async {
          final _imageURL = await _cloudStorageService.uploadFileImage(
            imageToUpload: _imageFile,
            folder: StorageFolder.experiences,
            name: _objective.id.getOrCrash(),
          );
          final _objectiveWithImage = _objective.copyWith(imageURL: _imageURL);
          objectiveList.add(_objectiveWithImage);
        },
      );
    }
  }

  Either<Failure, T> _onException<T>(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
        ),
      );
    } else {
      _logger.e("Unknown Exception: ${error.runtimeType}");
      return left(
        const Failure.coreData(
          CoreDataFailure.serverError(errorString: "Unknown  server error"),
        ),
      );
    }
  }
}
