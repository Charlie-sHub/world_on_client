import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/converters/domain_experience_to_moor_experience.dart';
import 'package:worldon/data/core/moor/converters/domain_objective_to_moor_objective.dart';
import 'package:worldon/data/core/moor/converters/domain_reward_to_moor_reward.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: ExperienceManagementRepositoryInterface, env: [Environment.dev])
class DevelopmentExperienceManagementRepository implements ExperienceManagementRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Future<Either<Failure, Unit>> createExperience(Experience experience) async {
    try {
      await insertExperience(experience);
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

  Future insertExperience(Experience experience) async {
    final _moorExperience = domainExperienceToMoorExperience(experience);
    await _database.moorExperiencesDao.insertExperience(_moorExperience);
    final _moorObjectives = experience.objectives
        .getOrCrash()
        .asSet()
        .map(
          (_objective) => domainObjectiveToMoorObjective(
            experience.id.getOrCrash(),
            _objective,
          ),
        )
        .toSet();
    final _moorRewards = experience.rewards
        .getOrCrash()
        .asSet()
        .map(
          (_reward) => domainRewardToMoorReward(
        experience.id.getOrCrash(),
        _reward,
          ),
        )
        .toSet();
    experience.imageAssetsOption.fold(
      // This should never happen
      // If it does an exception should be thrown or something
      () => _logger.e("The experience ${experience.title} imageAssetOption field is none()"),
      (imageAssetList) async {
        for (final _imageAsset in imageAssetList) {
          final _experienceImage = ExperienceImageUrlsCompanion.insert(
            experienceId: experience.id.getOrCrash(),
            imageUrl: _imageAsset.identifier,
          );
          await _database.moorExperiencesDao.insertExperienceImage(_experienceImage);
        }
      },
    );
    for (final _tag in experience.tags.getOrCrash().asSet()) {
      final _experienceTag = ExperienceTagsCompanion.insert(
        experienceId: experience.id.getOrCrash(),
        tagId: _tag.id.getOrCrash(),
      );
      await _database.moorTagsDao.insertExperienceTag(_experienceTag);
    }
    for (final _objective in _moorObjectives) {
      await _database.moorObjectivesDao.insertObjective(_objective);
    }
    for (final _reward in _moorRewards) {
      await _database.moorRewardsDao.insertReward(_reward);
    }
  }

  @override
  Future<Either<Failure, Unit>> editExperience(Experience experience) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Experience>> getExperience(UniqueId id) {
    if (_random.nextBool()) {
      return getRightFuture(getValidExperience());
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> removeExperience(UniqueId id) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
