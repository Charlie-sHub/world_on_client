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
import 'package:worldon/injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class EditExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceManagementRepositoryInterface _repository;

  EditExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = await _checkAuthorization(params);
    if (isAuthorized) {
      final imagesToDelete = _getImageListToDelete(params);
      return _repository.editExperience(
        params.experience,
        imagesToDelete,
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
    final imagesLeftList = params.experience.imageURLs.toList();
    final objectivesImageUrls =
        params.experience.objectives.getOrCrash().dart.map(
              (objective) => objective.imageURL,
            );
    final rewardsImageUrls = params.experience.rewards.getOrCrash().dart.map(
          (reward) => reward.imageURL,
        );
    imagesLeftList.addAll(
      objectivesImageUrls,
    );
    imagesLeftList.addAll(
      rewardsImageUrls,
    );
    final imagesToDelete = params.originalImageUrls
        .where(
          (imageUrl) => !imagesLeftList.contains(imageUrl),
        )
        .toList();
    final filteredImagesToDelete = imagesToDelete
        .where(
          (imageUrl) => imageUrl != "",
        )
        .toList();
    return filteredImagesToDelete;
  }

  Future<bool> _checkAuthorization(Params params) async {
    final userRequestingOption = await getIt<GetLoggedInUser>().call(
      getIt<NoParams>(),
    );
    final userRequesting = userRequestingOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    final isAuthorized = userRequesting.id == params.experience.creator.id ||
        userRequesting.adminPowers;
    return isAuthorized;
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
