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

@LazySingleton(
  as: ExperienceManagementRepositoryInterface,
  env: [Environment.prod],
)
class ProductionExperienceManagementRepository
    implements ExperienceManagementRepositoryInterface {
  final Logger _logger;
  final _geo = Geoflutterfire();
  final _functions = FirebaseFunctions.instanceFor(region: "europe-west1");
  final CloudStorageService _cloudStorageService;
  final FirebaseFirestore _firestore;

  ProductionExperienceManagementRepository(
    this._firestore,
    this._logger,
    this._cloudStorageService,
  );

  @override
  Future<Either<Failure, Unit>> createExperience(Experience experience) async {
    try {
      final rewardSet = <Reward>{};
      final urlsSet = <String>{};
      final objectiveList = <Objective>[];
      await _uploadImages(
        experience,
        rewardSet,
        objectiveList,
        urlsSet,
      );
      final experienceDto = ExperienceDto.fromDomain(
        experience.copyWith(
          rewards: RewardSet(rewardSet.toImmutableSet()),
          objectives: ObjectiveList(objectiveList.toImmutableList()),
          imageURLs: urlsSet,
        ),
      );
      final flutterFireGeoPosition = _geo.point(
        latitude: experienceDto.coordinates.latitude,
        longitude: experienceDto.coordinates.longitude,
      );
      final experienceJson = experienceDto.toJson();
      experienceJson[ExperienceFields.position] = flutterFireGeoPosition.data;
      // Don't like that at all but it's the best for now
      final experienceDtoWithGeoData = ExperienceDto.fromJson(experienceJson);
      _firestore.experienceCollection
          .doc(
            experience.id.getOrCrash(),
          )
          .set(
            experienceDtoWithGeoData,
          );
      return right(unit);
    } catch (e) {
      return _onError(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> editExperience(
    Experience experience,
    List<String> imageUrlListToDelete,
  ) async {
    try {
      final rewardSet = <Reward>{};
      final urlsSet = experience.imageURLs;
      final objectiveList = <Objective>[];
      final experienceId = experience.id.getOrCrash();
      await _uploadImages(
        experience,
        rewardSet,
        objectiveList,
        urlsSet,
      );
      // Adding the original rewards and objectives
      // _rewardSet.addAll(experience.rewards.getOrCrash().dart);
      // _objectiveList.addAll(experience.objectives.getOrCrash().dart);
      final experienceDto = ExperienceDto.fromDomain(
        experience.copyWith(
          rewards: RewardSet(rewardSet.toImmutableSet()),
          objectives: ObjectiveList(objectiveList.toImmutableList()),
          imageURLs: urlsSet,
        ),
      );
      final flutterFireGeoPosition = _geo.point(
        latitude: experienceDto.coordinates.latitude,
        longitude: experienceDto.coordinates.longitude,
      );
      final experienceJson = experienceDto.toJson();
      experienceJson[ExperienceFields.position] = flutterFireGeoPosition.data;
      _firestore.experienceCollection
          .doc(
            experienceId,
          )
          .update(
            experienceJson,
          );
      final propagateUpdateCallable =
          _functions.httpsCallable("propagateExperienceUpdate");
      propagateUpdateCallable.call(
        <String, dynamic>{"experienceId": experienceId},
      );
      final updateIndexCallable =
          _functions.httpsCallable("updateExperienceIndex");
      await updateIndexCallable.call(
        <String, dynamic>{"experienceId": experienceId},
      );
      for (final imageUrl in imageUrlListToDelete) {
        _cloudStorageService.deleteImage(imageUrl);
      }
      return right(unit);
    } catch (e) {
      return _onError(e);
    }
  }

  @override
  Future<Either<Failure, Experience>> getExperience(UniqueId id) async {
    try {
      final experienceSnapshot = await _firestore.experienceCollection
          .doc(
            id.getOrCrash(),
          )
          .get();
      final experience = experienceSnapshot.data()!.toDomain();
      return right(experience);
    } catch (e) {
      return _onError(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId) async {
    try {
      final cloudStorageService = getIt<CloudStorageService>();
      final documentReference = await _firestore.experienceDocumentReference(
        experienceId.getOrCrash(),
      );
      final documentSnapshot = await documentReference.get();
      final experienceDto = documentSnapshot.data();
      for (final imageUrl in experienceDto!.imageURLs) {
        cloudStorageService.deleteImage(imageUrl);
      }
      for (final objective in experienceDto.objectives) {
        cloudStorageService.deleteImage(objective.imageURL);
      }
      for (final reward in experienceDto.rewards) {
        cloudStorageService.deleteImage(reward.imageURL);
      }
      documentReference.delete();
      return right(unit);
    } catch (error) {
      return _onError(error);
    }
  }

  Future _uploadImages(
    Experience experience,
    Set<Reward> rewardSet,
    List<Objective> objectiveList,
    Set<String> urlsSet,
  ) async {
    final imageAssets = experience.imageAssetsOption.getOrElse(() => []);
    for (final imageAsset in imageAssets) {
      final imageName = imageAsset.name! + experience.id.getOrCrash();
      final imageURL = await _cloudStorageService.uploadAssetImage(
        imageToUpload: imageAsset,
        folder: StorageFolder.experiences,
        name: imageName,
      );
      urlsSet.add(imageURL);
    }
    for (final reward in experience.rewards.getOrCrash().dart) {
      await reward.imageFile.fold(
        () => null,
        (imageFile) async {
          final imageURL = await _cloudStorageService.uploadFileImage(
            imageToUpload: imageFile,
            folder: StorageFolder.experiences,
            name: reward.id.getOrCrash(),
          );
          final rewardWithImage = reward.copyWith(imageURL: imageURL);
          rewardSet.add(rewardWithImage);
        },
      );
    }
    for (final objective in experience.objectives.getOrCrash().dart) {
      Objective objectiveToAdd = objective;
      if (objective.imageFile != null) {
        await objective.imageFile!.fold(
          () => null,
          (imageFile) async {
            final imageURL = await _cloudStorageService.uploadFileImage(
              imageToUpload: imageFile,
              folder: StorageFolder.experiences,
              name: objective.id.getOrCrash(),
            );
            objectiveToAdd = objective.copyWith(
              imageURL: imageURL,
            );
          },
        );
      }
      objectiveList.add(objectiveToAdd);
    }
  }

  Either<Failure, T> _onError<T>(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Firebase error: ${error.message}",
          ),
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
