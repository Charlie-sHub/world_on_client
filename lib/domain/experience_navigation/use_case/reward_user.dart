import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class RewardUser implements AsyncUseCase<Map, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  RewardUser(this._repository);

  @override
  Future<Either<Failure, Map>> call(Params params) async {
    final currentUserOption = await getIt<GetLoggedInUser>()(
      getIt<NoParams>(),
    );
    return currentUserOption.fold(
      () => throw UnAuthenticatedError(),
      (user) async {
        bool leveledUp = false;
        int xpAwarded =
            params.difficulty.getOrCrash() * ExperiencePoints.multiplier;
        final userXPPre = user.experiencePoints.getOrCrash();
        final userLevelPre = user.level.getOrCrash();
        final itemList = user.items.where(
          (item) =>
              item.id.getOrCrash() == "81539390-6807-11eb-a79a-01068a2daab7",
        );
        final item = itemList.isNotEmpty ? itemList.first : null;
        if (item != null) {
          final isValid = DateTime.now().isBefore(
            item.boughtDate.add(
              Duration(days: item.timeLimitInDays),
            ),
          );
          if (isValid) {
            xpAwarded = xpAwarded * 2;
          } else {
            _repository.removeExperienceBoostItem(item);
          }
        }
        final userXPPost = xpAwarded + userXPPre;
        final userLevelPost = levelAt(userXPPost);
        leveledUp = userLevelPost > userLevelPre;
        final resultMap = {
          "leveledUp": leveledUp,
          "experiencePoints": xpAwarded,
        };
        final failureOrUnit = await _repository.rewardUser(
          xpAwarded,
          userLevelPost,
        );
        return failureOrUnit.fold(
          left,
          (_) => right(resultMap),
        );
      },
    );
  }
}

class Params {
  final Difficulty difficulty;

  Params({
    required this.difficulty,
  });
}
