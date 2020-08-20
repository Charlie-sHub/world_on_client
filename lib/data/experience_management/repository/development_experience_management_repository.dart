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
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
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
      final _moorExperience = domainExperienceToMoorExperience(experience);
      final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
      experience.imageAssetsOption.fold(
        // This should never happen
        // If it does an exception should be thrown or something
        () => _logger.i("The experience ${experience.title} imageAssetOption field is none()"),
        (imageAssetList) async {
          for (final _imageAsset in imageAssetList) {
            final _experienceImage = ExperienceImageUrlsCompanion.insert(
              experienceId: _experienceId,
              // TODO: Figure out a way to select multiple file images
              // just saving the name is useless for this
              imageUrl: _imageAsset.name,
            );
            await _database.moorExperiencesDao.insertExperienceImage(_experienceImage);
          }
        },
      );
      for (final _tag in experience.tags.getOrCrash().asSet()) {
        final _experienceTag = ExperienceTagsCompanion.insert(
          experienceId: _experienceId,
          tagId: _tag.id,
        );
        await _database.moorTagsDao.insertExperienceTag(_experienceTag);
      }
      return right(unit);
    } on Exception catch (exception) {
      _logger.e("Moor Database error: $exception");
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
  Future<Either<Failure, Unit>> editExperience(Experience experience) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Experience>> getExperience(int id) {
    if (_random.nextBool()) {
      return getRightFuture(getValidExperience());
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> removeExperience(int id) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
