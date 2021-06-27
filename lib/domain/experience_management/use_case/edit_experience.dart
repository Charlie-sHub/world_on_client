import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

import '../../../injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class EditExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceManagementRepositoryInterface _repository;

  EditExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final _isAuthorized = await _checkAuthorization(params);
    if (_isAuthorized) {
      final _imagesToDelete = _getImageListToDelete(params);
      return _repository.editExperience(
        params.experience,
        _imagesToDelete,
      );
    } else {
      return left(
        const Failure.coreDomain(
          CoreDomainFailure.unAuthorizedError(),
        ),
      );
    }
  }

  List<String> _getImageListToDelete(Params params) {
    final _imagesLeftList = params.experience.imageURLs.toList();
    final _objectivesImageUrls = params.experience.objectives.getOrCrash().dart.map(
          (_objective) => _objective.imageURL,
        );
    final _rewardsImageUrls = params.experience.rewards.getOrCrash().dart.map(
          (_reward) => _reward.imageURL,
        );
    _imagesLeftList.addAll(
      _objectivesImageUrls,
    );
    _imagesLeftList.addAll(
      _rewardsImageUrls,
    );
    final _imagesToDelete = params.originalImageUrls
        .where(
          (_imageUrl) => !_imagesLeftList.contains(_imageUrl),
        )
        .toList();
    final _filteredImagesToDelete = _imagesToDelete
        .where(
          (_imageUrl) => _imageUrl != "",
        )
        .toList();
    return _filteredImagesToDelete;
  }

  Future<bool> _checkAuthorization(Params params) async {
    final _userRequestingOption = await getIt<GetLoggedInUser>().call(
      getIt<NoParams>(),
    );
    final _userRequesting = _userRequestingOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    final _isAuthorized =
        _userRequesting.id == params.experience.creator.id || _userRequesting.adminPowers;
    return _isAuthorized;
  }
}

class Params {
  final Experience experience;
  final List<String> originalImageUrls;

  Params({
    required this.experience,
    required this.originalImageUrls,
  });
}
